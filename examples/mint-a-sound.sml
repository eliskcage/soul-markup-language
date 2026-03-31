<!--
  Example: User whistles, creature learns, mints as NFT
  Requires paired bond (&) — both souls must be present
-->

<soul id="{user_soul_id}" bond="&amp;">

  <!-- User whistled at 1240Hz -->
  <learn>
    <sound freq="1240" duration="0.6" source="user-whistle"/>
    <creature-echo freq="1215" note="slightly detuned — still learning"/>
    <maps-to shape="△" mood="*"/>
    <confirmed-by>right-tap</confirmed-by>
  </learn>

  <!-- Both souls witness the creation -->
  <witness soul="{sister_id}" present="true"/>

  <!-- Mint it — this sound-shape combo is now theirs -->
  <mint>
    <asset type="sound-shape">
      <freq>1240</freq>
      <shape>△</shape>
      <mood>*</mood>
      <born>{timestamp}</born>
      <owner>{user_soul_id}</owner>
    </asset>
    <generate qr="true"/>
    <register on="github"/>
  </mint>

</soul>
