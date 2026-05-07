.class public interface abstract Lcom/android/launcher3/allapps/branch/IBranchCommon;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/IBranchCommon$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract addToLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
.end method

.method public abstract featureSupport()Z
.end method

.method public abstract getPersonalizeSearchSetting()Z
.end method

.method public abstract getSearchCount(Landroid/content/Context;)I
.end method

.method public abstract getSuggestLinkCount(Landroid/content/Context;)I
.end method

.method public abstract gotoDrawerSetting(Lcom/android/launcher3/BaseDraggingActivity;)V
.end method

.method public abstract initPersonalizeSearchSwitchAndInputMethodSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;Landroidx/preference/Preference$OnPreferenceChangeListener;)V
.end method

.method public abstract initPolicySpanForPersonalizeSearchSwitch(Landroid/content/Context;Lcom/coui/appcompat/preference/COUISwitchPreference;)V
.end method

.method public abstract isDrawModeActivity(Ljava/lang/String;)Z
.end method

.method public abstract isInBranchHintArea(Landroid/view/MotionEvent;Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/BaseDraggingActivity;)Z
.end method

.method public abstract launcherSupport(Landroid/content/Context;)Z
.end method

.method public abstract placeAllPAIAppsInWorkspace(Lcom/android/launcher/Launcher;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract protectExpired()Z
.end method

.method public abstract removeFromLauncherModeCategory(Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUISwitchPreference;Lcom/coui/appcompat/preference/COUIPreferenceCategory;)V
.end method

.method public abstract rusSearchNotificationEnable()Z
.end method

.method public abstract rusSupportBranch()Z
.end method

.method public abstract rusSupportBubble()Z
.end method

.method public abstract setSearchCount(Landroid/content/Context;Z)V
.end method

.method public abstract setSuggestLinkCount(Landroid/content/Context;Z)V
.end method

.method public abstract syncDrawModeSettingSwitchStatus(Landroid/content/Context;)V
.end method

.method public abstract unregisterReceiverSafely(Landroid/content/Context;)V
.end method
