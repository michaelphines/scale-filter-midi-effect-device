class ScaleFilterDevice
  attr_accessor :device_name, :note_names_and_numbers

  def initialize(device_name, note_names_and_numbers)
    @device_name = device_name
    @note_names_and_numbers = note_names_and_numbers
  end

  def xml
    preset_xml
  end

  private

  def midi_effect_branch_xml(note_name, note_number)
    <<-MIDI_EFFECT_BRANCH_XML
      <MidiEffectBranchPreset>
        <Name Value="#{note_name}" />
        <IsSoloed Value="false" />
        <DevicePresets />
        <MixerPreset>
          <AbletonDevicePreset>
            <OverwriteProtectionNumber Value="2305" />
            <Device>
              <MidiBranchMixerDevice>
                <LomId Value="0" />
                <LomIdView Value="0" />
                <IsExpanded Value="true" />
                <On>
                  <LomId Value="0" />
                  <ArrangerAutomation>
                    <Events>
                      <BoolEvent Time="-63072000" Value="true" />
                    </Events>
                  </ArrangerAutomation>
                  <Manual Value="true" />
                  <AutomationTarget Id="0">
                    <LockEnvelope Value="0" />
                  </AutomationTarget>
                  <MidiCCOnOffThresholds>
                    <Min Value="64" />
                    <Max Value="127" />
                  </MidiCCOnOffThresholds>
                </On>
                <ParametersListWrapper LomId="0" />
                <LastSelectedTimeableIndex Value="0" />
                <LastSelectedClipEnvelopeIndex Value="0" />
                <LastPresetRef>
                  <Value>
                    <AbletonDefaultPresetRef>
                      <FileRef>
                        <HasRelativePath Value="false" />
                        <RelativePathType Value="0" />
                        <RelativePath />
                        <Name Value="" />
                        <Type Value="0" />
                        <Data />
                        <RefersToFolder Value="false" />
                        <SearchHint>
                          <PathHint />
                          <FileSize Value="0" />
                          <Crc Value="0" />
                          <MaxCrcSize Value="0" />
                          <HasExtendedInfo Value="false" />
                        </SearchHint>
                        <LivePackName Value="" />
                        <LivePackId Value="" />
                      </FileRef>
                      <DeviceId Name="MidiBranchMixerDevice" />
                    </AbletonDefaultPresetRef>
                  </Value>
                </LastPresetRef>
                <LockedScripts />
                <IsFolded Value="false" />
                <ShouldShowPresetName Value="false" />
                <UserName Value="" />
                <Annotation Value="" />
                <SourceContext>
                  <Value />
                </SourceContext>
                <OverwriteProtectionNumber Value="2305" />
                <Speaker>
                  <LomId Value="0" />
                  <ArrangerAutomation>
                    <Events>
                      <BoolEvent Time="-63072000" Value="true" />
                    </Events>
                  </ArrangerAutomation>
                  <Manual Value="true" />
                  <AutomationTarget Id="0">
                    <LockEnvelope Value="0" />
                  </AutomationTarget>
                  <MidiCCOnOffThresholds>
                    <Min Value="64" />
                    <Max Value="127" />
                  </MidiCCOnOffThresholds>
                </Speaker>
              </MidiBranchMixerDevice>
            </Device>
            <PresetRef>
              <AbletonDefaultPresetRef>
                <FileRef>
                  <HasRelativePath Value="false" />
                  <RelativePathType Value="0" />
                  <RelativePath />
                  <Name Value="" />
                  <Type Value="0" />
                  <Data />
                  <RefersToFolder Value="false" />
                  <SearchHint>
                    <PathHint />
                    <FileSize Value="0" />
                    <Crc Value="0" />
                    <MaxCrcSize Value="0" />
                    <HasExtendedInfo Value="false" />
                  </SearchHint>
                  <LivePackName Value="" />
                  <LivePackId Value="" />
                </FileRef>
                <DeviceId Name="MidiBranchMixerDevice" />
              </AbletonDefaultPresetRef>
            </PresetRef>
          </AbletonDevicePreset>
        </MixerPreset>
        <BranchSelectorRange>
          <Min Value="0" />
          <Max Value="127" />
          <CrossfadeMin Value="0" />
          <CrossfadeMax Value="127" />
        </BranchSelectorRange>
        <SessionViewBranchWidth Value="55" />
        <ColorIndex Value="155" />
        <AutoColored Value="true" />
        <SourceContext />
        <ZoneSettings>
          <KeyRange>
            <Min Value="#{note_number}" />
            <Max Value="#{note_number}" />
            <CrossfadeMin Value="#{note_number}" />
            <CrossfadeMax Value="#{note_number}" />
          </KeyRange>
          <VelocityRange>
            <Min Value="1" />
            <Max Value="127" />
            <CrossfadeMin Value="1" />
            <CrossfadeMax Value="127" />
          </VelocityRange>
        </ZoneSettings>
      </MidiEffectBranchPreset>
    MIDI_EFFECT_BRANCH_XML
  end

  def preset_xml
    <<-PRESET_XML
      <?xml version="1.0" encoding="UTF-8"?>
      <Ableton MajorVersion="4" MinorVersion="9.5_326" SchemaChangeCount="7" Creator="Ableton Live 9.6.2" Revision="725d800103a155613e55ab9674e8994dedc2e78c">
        <GroupDevicePreset>
          <OverwriteProtectionNumber Value="2305" />
          <Device>
            <MidiEffectGroupDevice>
              <LomId Value="0" />
              <LomIdView Value="0" />
              <IsExpanded Value="true" />
              <On>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <BoolEvent Time="-63072000" Value="true" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="true" />
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <MidiCCOnOffThresholds>
                  <Min Value="64" />
                  <Max Value="127" />
                </MidiCCOnOffThresholds>
              </On>
              <ParametersListWrapper LomId="0" />
              <LastSelectedTimeableIndex Value="0" />
              <LastSelectedClipEnvelopeIndex Value="0" />
              <LastPresetRef>
                <Value>
                  <FilePresetRef>
                    <FileRef>
                      <HasRelativePath Value="true" />
                      <RelativePathType Value="5" />
                      <RelativePath>
                        <RelativePathElement Dir="Presets" />
                        <RelativePathElement Dir="MIDI Effects" />
                        <RelativePathElement Dir="MIDI Effect Rack" />
                        <RelativePathElement Dir="Tools" />
                      </RelativePath>
                      <Name Value="GM Drum Map.adg" />
                      <Type Value="2" />
                      <Data>
                        000000000256000200000C4D6163696E746F7368204844000000000000000000000000000000CFD3
                        E476482B000001FBF7E20F474D204472756D204D61702E6164670000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000000001FC1636D269
                        1A7500000000612D6C76FFFFFFFF0000092000000000000000000000000000000005546F6F6C7300
                        001000080000CFD42AC60000001100080000D2696ED500000001002801FBF7E201FBF7DC01FBF7D6
                        01FBF5D601FBF5AC006B2577005F963C005F963000093778000266F9000200974D6163696E746F73
                        682048443A55736572733A006D69636861656C68696E65733A004D757369633A0041626C65746F6E
                        3A00466163746F7279205061636B733A004C6976652038204C6567616379204C6962726172793A00
                        507265736574733A004D49444920456666656374733A004D49444920456666656374205261636B3A
                        00546F6F6C733A00474D204472756D204D61702E61646700000E0020000F0047004D002000440072
                        0075006D0020004D00610070002E006100640067000F001A000C004D006100630069006E0074006F
                        007300680020004800440012008055736572732F6D69636861656C68696E65732F4D757369632F41
                        626C65746F6E2F466163746F7279205061636B732F4C6976652038204C6567616379204C69627261
                        72792F507265736574732F4D49444920456666656374732F4D49444920456666656374205261636B
                        2F546F6F6C732F474D204472756D204D61702E616467001300012F00001500020013FFFF0000
                      </Data>
                      <RefersToFolder Value="false" />
                      <SearchHint>
                        <PathHint />
                        <FileSize Value="0" />
                        <Crc Value="0" />
                        <MaxCrcSize Value="0" />
                        <HasExtendedInfo Value="false" />
                      </SearchHint>
                      <LivePackName Value="Live 8 Legacy Library" />
                      <LivePackId Value="www.ableton.com/126" />
                    </FileRef>
                  </FilePresetRef>
                </Value>
              </LastPresetRef>
              <LockedScripts />
              <IsFolded Value="false" />
              <ShouldShowPresetName Value="true" />
              <UserName Value="#{device_name}" />
              <Annotation Value="" />
              <SourceContext>
                <Value />
              </SourceContext>
              <OverwriteProtectionNumber Value="2305" />
              <Branches />
              <IsBranchesListVisible Value="true" />
              <IsReturnBranchesListVisible Value="false" />
              <IsRangesEditorVisible Value="false" />
              <AreDevicesVisible Value="true" />
              <MacroControls.0>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </MacroControls.0>
              <MacroControls.1>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </MacroControls.1>
              <MacroControls.2>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </MacroControls.2>
              <MacroControls.3>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </MacroControls.3>
              <MacroControls.4>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </MacroControls.4>
              <MacroControls.5>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </MacroControls.5>
              <MacroControls.6>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </MacroControls.6>
              <MacroControls.7>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </MacroControls.7>
              <MacroDisplayNames.0 Value="Macro 1" />
              <MacroDisplayNames.1 Value="Macro 2" />
              <MacroDisplayNames.2 Value="Macro 3" />
              <MacroDisplayNames.3 Value="Macro 4" />
              <MacroDisplayNames.4 Value="Macro 5" />
              <MacroDisplayNames.5 Value="Macro 6" />
              <MacroDisplayNames.6 Value="Macro 7" />
              <MacroDisplayNames.7 Value="Macro 8" />
              <MacroDefaults.0 Value="0" />
              <MacroDefaults.1 Value="0" />
              <MacroDefaults.2 Value="0" />
              <MacroDefaults.3 Value="0" />
              <MacroDefaults.4 Value="0" />
              <MacroDefaults.5 Value="0" />
              <MacroDefaults.6 Value="0" />
              <MacroDefaults.7 Value="0" />
              <MacroAnnotations.0 Value="" />
              <MacroAnnotations.1 Value="" />
              <MacroAnnotations.2 Value="" />
              <MacroAnnotations.3 Value="" />
              <MacroAnnotations.4 Value="" />
              <MacroAnnotations.5 Value="" />
              <MacroAnnotations.6 Value="" />
              <MacroAnnotations.7 Value="" />
              <ForceDisplayGenericValue.0 Value="false" />
              <ForceDisplayGenericValue.1 Value="false" />
              <ForceDisplayGenericValue.2 Value="false" />
              <ForceDisplayGenericValue.3 Value="false" />
              <ForceDisplayGenericValue.4 Value="false" />
              <ForceDisplayGenericValue.5 Value="false" />
              <ForceDisplayGenericValue.6 Value="false" />
              <ForceDisplayGenericValue.7 Value="false" />
              <AreMacroControlsVisible Value="true" />
              <IsAutoSelectEnabled Value="false" />
              <ChainSelector>
                <LomId Value="0" />
                <ArrangerAutomation>
                  <Events>
                    <FloatEvent Time="-63072000" Value="0" />
                  </Events>
                </ArrangerAutomation>
                <Manual Value="0" />
                <MidiControllerRange>
                  <Min Value="0" />
                  <Max Value="127" />
                </MidiControllerRange>
                <AutomationTarget Id="0">
                  <LockEnvelope Value="0" />
                </AutomationTarget>
                <ModulationTarget Id="0">
                  <LockEnvelope Value="0" />
                </ModulationTarget>
                <ModulationAutomation>
                  <Events />
                </ModulationAutomation>
              </ChainSelector>
              <ChainSelectorRelativePosition Value="-1073741824" />
              <ViewsToRestoreWhenUnfolding Value="0" />
              <ReturnBranches />
              <BranchesSplitterProportion Value="0.5" />
              <ShowBranchesInSessionMixer Value="false" />
              <MacroColorIndex.0 Value="0" />
              <MacroColorIndex.1 Value="0" />
              <MacroColorIndex.2 Value="0" />
              <MacroColorIndex.3 Value="0" />
              <MacroColorIndex.4 Value="0" />
              <MacroColorIndex.5 Value="0" />
              <MacroColorIndex.6 Value="0" />
              <MacroColorIndex.7 Value="0" />
              <LockId Value="0" />
              <LockSeal Value="0" />
              <ChainsListWrapper LomId="0" />
              <ReturnChainsListWrapper LomId="0" />
              <ChainSelectorFilterMidiCtrl Value="false" />
              <RangeTypeIndex Value="1" />
              <MidiTargetShowsZonesInsteadOfNoteNames Value="true" />
            </MidiEffectGroupDevice>
          </Device>
          <PresetRef>
            <FilePresetRef>
              <FileRef>
                <HasRelativePath Value="true" />
                <RelativePathType Value="5" />
                <RelativePath>
                  <RelativePathElement Dir="Presets" />
                  <RelativePathElement Dir="MIDI Effects" />
                  <RelativePathElement Dir="MIDI Effect Rack" />
                  <RelativePathElement Dir="Tools" />
                </RelativePath>
                <Name Value="GM Drum Map.adg" />
                <Type Value="2" />
                <Data>
                  000000000256000200000C4D6163696E746F7368204844000000000000000000000000000000CFD3
                  E476482B000001FBF7E20F474D204472756D204D61702E6164670000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000000001FC1636D269
                  1A7500000000612D6C76FFFFFFFF0000092000000000000000000000000000000005546F6F6C7300
                  001000080000CFD42AC60000001100080000D2696ED500000001002801FBF7E201FBF7DC01FBF7D6
                  01FBF5D601FBF5AC006B2577005F963C005F963000093778000266F9000200974D6163696E746F73
                  682048443A55736572733A006D69636861656C68696E65733A004D757369633A0041626C65746F6E
                  3A00466163746F7279205061636B733A004C6976652038204C6567616379204C6962726172793A00
                  507265736574733A004D49444920456666656374733A004D49444920456666656374205261636B3A
                  00546F6F6C733A00474D204472756D204D61702E61646700000E0020000F0047004D002000440072
                  0075006D0020004D00610070002E006100640067000F001A000C004D006100630069006E0074006F
                  007300680020004800440012008055736572732F6D69636861656C68696E65732F4D757369632F41
                  626C65746F6E2F466163746F7279205061636B732F4C6976652038204C6567616379204C69627261
                  72792F507265736574732F4D49444920456666656374732F4D49444920456666656374205261636B
                  2F546F6F6C732F474D204472756D204D61702E616467001300012F00001500020013FFFF0000
                </Data>
                <RefersToFolder Value="false" />
                <SearchHint>
                  <PathHint />
                  <FileSize Value="0" />
                  <Crc Value="0" />
                  <MaxCrcSize Value="0" />
                  <HasExtendedInfo Value="false" />
                </SearchHint>
                <LivePackName Value="Live 8 Legacy Library" />
                <LivePackId Value="www.ableton.com/126" />
              </FileRef>
            </FilePresetRef>
          </PresetRef>
          <BranchPresets>
            #{note_names_and_numbers.map { |name, number| midi_effect_branch_xml(name, number) }.join("\n")}
          </BranchPresets>
          <ReturnBranchPresets />
        </GroupDevicePreset>
      </Ableton>
    PRESET_XML
  end
end
