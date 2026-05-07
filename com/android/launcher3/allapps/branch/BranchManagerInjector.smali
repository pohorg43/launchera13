.class public final Lcom/android/launcher3/allapps/branch/BranchManagerInjector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/IBranchCommon;


# static fields
.field public static final BASE_ENABLE:Z

.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchManagerInjector;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManagerInjector;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initBranchManager(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final initBranchStatus(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addToLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->addToLauncherModeCategory(Lcom/android/launcher3/allapps/branch/IBranchCommon;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    return-void
.end method

.method public featureSupport()Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->featureSupport(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z

    move-result p0

    return p0
.end method

.method public getPersonalizeSearchSetting()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getSearchCount(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->getSearchCount(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getSuggestLinkCount(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->getSuggestLinkCount(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public gotoDrawerSetting(Lcom/android/launcher3/BaseDraggingActivity;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->gotoDrawerSetting(Lcom/android/launcher3/allapps/branch/IBranchCommon;Lcom/android/launcher3/BaseDraggingActivity;)V

    return-void
.end method

.method public initPersonalizeSearchSwitchAndInputMethodSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->initPersonalizeSearchSwitchAndInputMethodSwitch(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public initPolicySpanForPersonalizeSearchSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->initPolicySpanForPersonalizeSearchSwitch(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;)V

    return-void
.end method

.method public isDrawModeActivity(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->isDrawModeActivity(Lcom/android/launcher3/allapps/branch/IBranchCommon;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isInBranchHintArea(Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->isInBranchHintArea(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z

    move-result p0

    return p0
.end method

.method public launcherSupport(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->launcherSupport(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public placeAllPAIAppsInWorkspace(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->placeAllPAIAppsInWorkspace(Lcom/android/launcher3/allapps/branch/IBranchCommon;Lcom/android/launcher/Launcher;Ljava/util/List;)V

    return-void
.end method

.method public protectExpired()Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->protectExpired(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z

    move-result p0

    return p0
.end method

.method public removeFromLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->removeFromLauncherModeCategory(Lcom/android/launcher3/allapps/branch/IBranchCommon;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V

    return-void
.end method

.method public rusSearchNotificationEnable()Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->rusSearchNotificationEnable(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z

    move-result p0

    return p0
.end method

.method public rusSupportBranch()Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->rusSupportBranch(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z

    move-result p0

    return p0
.end method

.method public rusSupportBubble()Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->rusSupportBubble(Lcom/android/launcher3/allapps/branch/IBranchCommon;)Z

    move-result p0

    return p0
.end method

.method public setSearchCount(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->setSearchCount(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;Z)V

    return-void
.end method

.method public setSuggestLinkCount(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->setSuggestLinkCount(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;Z)V

    return-void
.end method

.method public syncDrawModeSettingSwitchStatus(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->syncDrawModeSettingSwitchStatus(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)V

    return-void
.end method

.method public unregisterReceiverSafely(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;->unregisterReceiverSafely(Lcom/android/launcher3/allapps/branch/IBranchCommon;Landroid/content/Context;)V

    return-void
.end method
