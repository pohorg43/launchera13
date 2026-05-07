.class public Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;
.super Lcom/android/launcher/settings/BaseSettingsFragment;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final CATEGORY_BOTTOM_DIVIDER_KEY:Ljava/lang/String; = "category_bottom_divider"

.field private static final CATEGORY_LOCKED_APPS_KEY:Ljava/lang/String; = "category_locked_apps"

.field private static final CATEGORY_POWER_SAVE_MODE_NOTICE_KEY:Ljava/lang/String; = "category_power_save_mode_notice"

.field private static final CATEGORY_UNLOCK_APPS_KEY:Ljava/lang/String; = "category_unlock_apps"

.field private static final MEMORY_INFO_KEY:Ljava/lang/String; = "display_memory_information_recent_task"

.field private static final NUM_2:I = 0x2

.field private static final NUM_3:I = 0x3

.field public static final PHONE_MANAGER_ENTRANCE_KEY:Ljava/lang/String; = "display_phone_manager_entrance"

.field private static final PREFERENCE_POWER_SAVE_MODE_NOTICE:Ljava/lang/String; = "preference_power_save_mode_notice"

.field private static final TAG:Ljava/lang/String; = "LockSettingFragment"


# instance fields
.field public mBottomDivider:Landroidx/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayMemoryInforSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private mIsPowerSavingModleOn:Z

.field private mLoadingView:Landroid/widget/LinearLayout;

.field private mLoadingViewVisible:Z

.field public mLockedCategory:Landroidx/preference/PreferenceCategory;

.field private mLockedCategoryVisible:Z

.field private mPowerSaveModeNoticeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

.field private mPreferenceTitleCount:I

.field private mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mScroller:Landroidx/recyclerview/widget/COUIFastScroller;

.field public mUnLockedCategory:Landroidx/preference/PreferenceCategory;

.field private mUnLockedCategoryVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mBottomDivider:Landroidx/preference/PreferenceCategory;

    const/4 v1, 0x2

    iput v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPreferenceTitleCount:I

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayMemoryInforSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingViewVisible:Z

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createNewSwitchPreference(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    const-string p0, "LockSettingFragment"

    const-string p1, "createNewSwitchPreference -- mContext is null!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    new-instance v1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-direct {v1, v0}, Lcom/coui/appcompat/preference/COUISwitchPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, v1, Lcom/coui/appcompat/preference/COUISwitchPreference;->l:I

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    invoke-virtual {v1, p2}, Lcom/coui/appcompat/preference/COUISwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-object v1
.end method

.method public enterPowerSaveMode(Z)V
    .registers 4

    const-string v0, "enterPowerSaveMode isInPowerSavingModel : "

    const-string v1, "LockSettingFragment"

    invoke-static {v0, p1, v1}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mIsPowerSavingModleOn:Z

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPowerSaveModeNoticeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_24

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPowerSaveModeNoticeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    const-string p1, "preference_power_save_mode_notice"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;

    if-eqz p0, :cond_53

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->setDrawableAnimation(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/locksetting/ui/NoticePreference;->playAnimation()V

    goto :goto_53

    :cond_24
    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mScroller:Landroidx/recyclerview/widget/COUIFastScroller;

    if-nez p1, :cond_33

    new-instance p1, Landroidx/recyclerview/widget/COUIFastScroller;

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/COUIFastScroller;-><init>(Landroidx/recyclerview/widget/RecyclerView;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mScroller:Landroidx/recyclerview/widget/COUIFastScroller;

    :cond_33
    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mScroller:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070984

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/COUIFastScroller;->setThumbTopMargin(I)V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mScroller:Landroidx/recyclerview/widget/COUIFastScroller;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070983

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/COUIFastScroller;->setThumbBottomMargin(I)V

    :cond_53
    :goto_53
    return-void
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    const v0, 0x7f120395

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initPreference(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->clearPackageEntry()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_5d

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    const-string v3, "LockSettingFragment"

    if-eqz v2, :cond_55

    iget-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v4, :cond_47

    iget-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    iget-object v5, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, v5}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->createNewSwitchPreference(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/coui/appcompat/preference/COUISwitchPreference;

    move-result-object v4

    iput-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez v4, :cond_32

    const-string v4, "initPreference -- create NULL Preference for package: "

    invoke-static {v4}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-static {v4, v2, v3}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_32
    invoke-virtual {v2}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    iget-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_47

    :cond_40
    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    iget-object v4, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_47
    :goto_47
    iget-object v3, v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v3, v1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->updatePreference(Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {v3, v2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->addPackageEntry(Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V

    goto :goto_5a

    :cond_55
    const-string v2, "initPreference, packageEntry is null."

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_5d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string p1, "category_locked_apps"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1b
    const-string p1, "category_unlock_apps"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_2a

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2a
    const-string p1, "category_bottom_divider"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mBottomDivider:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_39

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_39
    const-string p1, "category_power_save_mode_notice"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPowerSaveModeNoticeCategory:Lcom/coui/appcompat/preference/COUIPreferenceCategory;

    if-eqz p1, :cond_48

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_48
    const-string p1, "display_memory_information_recent_task"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayMemoryInforSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_57

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_57
    new-instance p1, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;

    invoke-direct {p1, p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingPresenter;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$View;)V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategoryVisible:Z

    iput-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategoryVisible:Z

    const-string p1, "display_phone_manager_entrance"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/preference/COUISwitchPreference;

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p1, :cond_87

    sget-object p1, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger;->Companion:Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;

    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->shouldShowPhoneManagerCleanSwitch()Z

    move-result v1

    if-nez v1, :cond_7c

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_87

    :cond_7c
    invoke-virtual {p1}, Lcom/oplus/quickstep/phonemanagerentrance/PhoneManagerEntranceManger$Companion;->supportPhoneManagerEntrance()Z

    move-result p1

    if-eqz p1, :cond_87

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_87
    :goto_87
    return-void
.end method

.method public onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    const/4 v2, 0x0

    if-nez v0, :cond_b

    move-object v0, v2

    goto :goto_f

    :cond_b
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_1b

    :cond_1a
    move-object v3, v2

    :goto_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-eqz v3, :cond_2f

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_2e

    :cond_2a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2e
    move-object v0, v2

    :cond_2f
    new-instance v1, Lcom/oplus/quickstep/locksetting/ui/LockSettingPreferenceGroupAdapter;

    iget-boolean v2, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->mPreferenceHighlighted:Z

    invoke-direct {v1, p1, v0, v2}, Lcom/oplus/quickstep/locksetting/ui/LockSettingPreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/launcher/settings/OplusSettingsHighlightableFragment;->mAdapter:Lcom/android/launcher/settings/HighlightablePreferenceGroupAdapter;

    return-object v1
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    const-string p1, "LockSettingFragment"

    const-string p2, "onCreatePreferences"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x7f150001

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher/settings/BaseSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0311

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingView:Landroid/widget/LinearLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setVerticalScrollBarEnabled(Z)V

    iget-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    sget-object p3, Ly1/a;->a:Ly1/a;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    if-nez p2, :cond_2d

    return-object p3

    :cond_2d
    invoke-static {p2, p3}, Lcom/android/common/util/IconUtils;->getDrawableForListIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->setMemoryInfoSwitch()V

    return-object p1
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "display_memory_information_recent_task"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->saveMemoryInfoSwitch(Z)Z

    move-result p0

    return p0

    :cond_1f
    const-string v0, "display_phone_manager_entrance"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->savePhoneManagerEntranceSwitch(Z)Z

    move-result p0

    return p0

    :cond_2e
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->updateEntry(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/settings/BaseSettingsFragment;->onResume()V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->setMemoryInfoSwitch()V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->setPhoneManagerEntranceSwitch()V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPresenter:Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;

    invoke-interface {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Presenter;->updateInterestedApps()V

    return-void
.end method

.method public removePreference(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method public showBottomDivider(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mBottomDivider:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public showLoadingView(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingViewVisible:Z

    if-eq v0, p1, :cond_11

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingViewVisible:Z

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLoadingView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_c

    const/4 p1, 0x0

    goto :goto_e

    :cond_c
    const/16 p1, 0x8

    :goto_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method public showLockedCategory(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategoryVisible:Z

    if-eq v0, p1, :cond_b

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategoryVisible:Z

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_b
    return-void
.end method

.method public showUnLockedCategory(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategoryVisible:Z

    if-eq v0, p1, :cond_b

    iput-boolean p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategoryVisible:Z

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_b
    return-void
.end method

.method public updateMemoryInfoSwitch(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayMemoryInforSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public updatePhoneManagerEntranceSwitch(Z)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDisplayPhoneManagerEntranceSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    return-void
.end method

.method public updatePreference(Lcom/oplus/quickstep/locksetting/contract/AppEntry;)V
    .registers 4

    iget-object v0, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {p1}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPreference:Lcom/coui/appcompat/preference/COUISwitchPreference;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mDefaultAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_18
    const-string p0, "updatePreference, title = "

    invoke-static {p0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v0, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", packageName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    const-string v0, "LockSettingFragment"

    invoke-static {p0, p1, v0}, Lcom/android/common/util/q;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updatePreferenceIcon(Lcom/oplus/quickstep/locksetting/contract/AppEntry;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    invoke-virtual {p1}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mLockedCategory:Landroidx/preference/PreferenceCategory;

    iget-object p1, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    goto :goto_17

    :cond_f
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mUnLockedCategory:Landroidx/preference/PreferenceCategory;

    iget-object p1, p1, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    :goto_17
    if-eqz p0, :cond_1c

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    return-void
.end method

.method public updatePreferenceTitleCount(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_5

    :cond_4
    const/4 p1, 0x2

    :goto_5
    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingFragment;->mPreferenceTitleCount:I

    return-void
.end method
