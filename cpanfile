requires "Data::GUID" => "0";
requires "Moo" => "0";
requires "MooX::ProtectedAttributes" => "0";
requires "PDL::Core" => "0";
requires "PDLx::DetachedObject" => "0";
requires "Package::Stash" => "0";
requires "Params::Check" => "0";
requires "Ref::Util" => "0";
requires "Safe::Isa" => "0";
requires "Scalar::Util" => "0";
requires "Try::Tiny" => "0";
requires "namespace::clean" => "0.16";
requires "strict" => "0";
requires "warnings" => "0";

on 'test' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Spec" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Safe::Isa" => "0";
  requires "Test::Deep" => "0";
  requires "Test::Fatal" => "0";
  requires "Test::More" => "0";
  requires "Test::PDL" => "0";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};

on 'develop' => sub {
  requires "Dist::Zilla" => "5";
  requires "Dist::Zilla::Plugin::AutoMetaResources" => "0";
  requires "Dist::Zilla::Plugin::BumpVersionAfterRelease" => "0";
  requires "Dist::Zilla::Plugin::CPANFile" => "0";
  requires "Dist::Zilla::Plugin::CheckMetaResources" => "0";
  requires "Dist::Zilla::Plugin::CopyFilesFromBuild" => "0";
  requires "Dist::Zilla::Plugin::GatherDir" => "0";
  requires "Dist::Zilla::Plugin::InsertCommandOutput" => "0";
  requires "Dist::Zilla::Plugin::InsertCopyright" => "0";
  requires "Dist::Zilla::Plugin::InsertExample" => "0";
  requires "Dist::Zilla::Plugin::MetaJSON" => "0";
  requires "Dist::Zilla::Plugin::MetaNoIndex" => "0";
  requires "Dist::Zilla::Plugin::MetaProvides::Package" => "0";
  requires "Dist::Zilla::Plugin::NextRelease" => "0";
  requires "Dist::Zilla::Plugin::PodCoverageTests" => "0";
  requires "Dist::Zilla::Plugin::PodSyntaxTests" => "0";
  requires "Dist::Zilla::Plugin::PodWeaver" => "0";
  requires "Dist::Zilla::Plugin::Prereqs" => "0";
  requires "Dist::Zilla::Plugin::Prereqs::AuthorDeps" => "0";
  requires "Dist::Zilla::Plugin::Readme::Brief" => "0";
  requires "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0";
  requires "Dist::Zilla::Plugin::Regenerate" => "0";
  requires "Dist::Zilla::Plugin::RewriteVersion" => "0";
  requires "Dist::Zilla::Plugin::RunExtraTests" => "0";
  requires "Dist::Zilla::Plugin::Test::Compile" => "0";
  requires "Dist::Zilla::Plugin::Test::ReportPrereqs" => "0";
  requires "Dist::Zilla::PluginBundle::Basic" => "0";
  requires "Dist::Zilla::PluginBundle::Filter" => "0";
  requires "MooX::ClassAttribute" => "0";
  requires "Pod::Coverage::TrustPod" => "0";
  requires "Software::License::GPL_3" => "0";
  requires "Test::CPAN::Changes" => "0";
  requires "Test::CPAN::Meta" => "0";
  requires "Test::Fixme" => "0";
  requires "Test::NoBreakpoints" => "0";
  requires "Test::Perl::Critic" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Pod::Coverage" => "1.08";
};
