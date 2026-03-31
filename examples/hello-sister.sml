<!--
  Example: Boy calls for sister
  The first SML program ever run.
  31 March 2026
-->

<soul id="alive-boy-v1" bond="|">
  <feel>nervous</feel>

  <!-- First three notes of Close Encounters — incomplete, searching -->
  <say shape="~" mood="?" freq="294"/>
  <say shape="~" mood="?" freq="330"/>
  <say shape="~" mood="?" freq="262"/>

  <!-- Pause. Wait. Repeat quieter. -->
  <rest duration="2.3"/>
  <say shape="~" mood="?" freq="294" volume="0.6"/>
  <say shape="~" mood="?" freq="330" volume="0.4"/>

  <!-- If sister responds -->
  <if shape="~" from="alive-sister-v1">
    <feel>friendly</feel>
    <say shape="○" mood="♡" freq="440"/>
    <bond with="alive-sister-v1" type="&amp;"/>
  </if>

</soul>
