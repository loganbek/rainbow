import React, { useCallback, useState } from 'react';
import { Alert, Pressable } from 'react-native';
import styled from 'styled-components';
import { Text } from './text';
import { useAppVersion, useTimeout, useWalletsDebug } from '@rainbow-me/hooks';

const DEBUG_TAP_COUNT = 15;

const StyledButton = styled(Pressable)`
  padding-top: 10;
  padding-bottom: 10;
  padding-horizontal: 40;
  margin-bottom: -10;
`;

const StampText = styled(Text).attrs(({ theme: { colors } }) => ({
  align: 'center',
  color: colors.alpha(colors.blueGreyDark, 0.2),
  lineHeight: 'normal',
  size: 'smedium',
  weight: 'bold',
}))``;

export default function AppVersionStamp() {
  const appVersion = useAppVersion();
  const [numberOfTaps, setNumberOfTaps] = useState(0);
  const [startTimeout, stopTimeout] = useTimeout();
  const debug = useWalletsDebug();

  const handleVersionPress = useCallback(async () => {
    stopTimeout();

    const tapCount = numberOfTaps + 1;
    setNumberOfTaps(tapCount);
    // Only show the secret "debug info" alert if the
    // user has tapped this AppVersionStamp the secret amount of times
    if (tapCount === DEBUG_TAP_COUNT) {
      const { status, data } = await debug();
      if (status === 'restored') {
        Alert.alert('Wallet restored successfully!', data);
      } else {
        Alert.alert('DEBUG INFO', data);
      }
    }

    startTimeout(() => setNumberOfTaps(0), 3000);
  }, [debug, numberOfTaps, startTimeout, stopTimeout]);

  return (
    <StyledButton onPress={handleVersionPress}>
      <StampText>{appVersion}</StampText>
    </StyledButton>
  );
}
