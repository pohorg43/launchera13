.class public Lcom/android/launcher/settings/LauncherModelIntroductionPreference;
.super Landroidx/preference/Preference;
.source ""

# interfaces
.implements Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_RECT_DEFAULT:I = 0x0

.field private static final ANIMATION_SCALE:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LauncherModelIntroductionPreference"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDrawerLayout:Landroid/widget/LinearLayout;

.field private mDrawerRadioButton:Landroid/widget/RadioButton;

.field private mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

.field private mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mLauncherModeDrawer:Landroid/widget/TextView;

.field private mLauncherModeLayout:Landroid/view/View;

.field private mLauncherModeStandard:Landroid/widget/TextView;

.field private mModeClickListener:Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;

.field private mSelectColor:I

.field private mStandardImage:Landroid/widget/ImageView;

.field private mStandardLayout:Landroid/widget/LinearLayout;

.field private mStandardRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mContext:Landroid/content/Context;

    const p2, 0x7f0401f0

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mSelectColor:I

    const p1, 0x7f0d011a

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1, p0}, Lcom/android/common/util/OplusFoldStateHelper;->addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :cond_1e
    const-string p0, "LauncherModelIntroductionPreference"

    const-string p1, " addCallBack "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mModeClickListener:Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;

    return-object p0
.end method

.method private bindView()V
    .registers 5

    sget-object v0, Lcom/android/common/util/ScreenUtils;->INSTANCE:Lcom/android/common/util/ScreenUtils;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_19

    :cond_b
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    :goto_19
    const-string v2, " useEmbeddedRes "

    const-string v3, "LauncherModelIntroductionPreference"

    invoke-static {v2, v0, v3}, Lcom/android/common/rus/a;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_2b

    goto :goto_3a

    :cond_2b
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070750

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_3a
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v1, :cond_ce

    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    if-nez v1, :cond_ce

    if-eqz v0, :cond_53

    const v1, 0x7f07074f

    goto :goto_56

    :cond_53
    const v1, 0x7f07074e

    :goto_56
    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_8a

    const v2, 0x7f080774

    goto :goto_8d

    :cond_8a
    const v2, 0x7f080773

    :goto_8d
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a7

    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_a0

    const v0, 0x7f11001f

    goto :goto_a3

    :cond_a0
    const v0, 0x7f110020

    :goto_a3
    invoke-virtual {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_b5

    :cond_a7
    iget-object v1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_af

    const v0, 0x7f11001e

    goto :goto_b2

    :cond_af
    const v0, 0x7f11001d

    :goto_b2
    invoke-virtual {v1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    :goto_b5
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v1, 0x3ea8f5c3  # 0.33f

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setScale(F)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    :cond_ce
    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {p0, v0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->changeLauncherModeStatus(Lcom/android/launcher/mode/LauncherMode;)V

    return-void
.end method


# virtual methods
.method public changeLauncherModeStatus(Lcom/android/launcher/mode/LauncherMode;)V
    .registers 6

    sget-object v0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$3;->$SwitchMap$com$android$launcher$mode$LauncherMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const v1, 0x7f06060c

    const/4 v2, 0x1

    if-eq p1, v2, :cond_32

    const/4 v3, 0x2

    if-eq p1, v3, :cond_13

    goto :goto_50

    :cond_13
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeDrawer:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mSelectColor:I

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeStandard:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mDrawerRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_50

    :cond_32
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeStandard:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mSelectColor:I

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeDrawer:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mDrawerRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_50
    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_7
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p0}, Lcom/android/common/util/OplusFoldStateHelper;->removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V

    :cond_10
    const-string p0, "LauncherModelIntroductionPreference"

    const-string v0, " removeCallback "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a02e9

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setCacheComposition(Z)V

    const v0, 0x7f0a04d4

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01f2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mDrawerLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a04d3

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardImage:Landroid/widget/ImageView;

    const v0, 0x7f0a02ea

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeLayout:Landroid/view/View;

    const v0, 0x7f0a02eb

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeStandard:Landroid/widget/TextView;

    const v0, 0x7f0a02e8

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeDrawer:Landroid/widget/TextView;

    const v0, 0x7f0a013b

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardRadioButton:Landroid/widget/RadioButton;

    const v0, 0x7f0a0139

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mDrawerRadioButton:Landroid/widget/RadioButton;

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mStandardLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$1;-><init>(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mDrawerLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$2;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference$2;-><init>(Lcom/android/launcher/settings/LauncherModelIntroductionPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->bindView()V

    return-void
.end method

.method public onFoldStateChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherModeAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->bindView()V

    :cond_7
    const-string p0, "LauncherModelIntroductionPreference"

    const-string v0, " setView "

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setData(Lcom/android/launcher/mode/LauncherMode;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mLauncherMode:Lcom/android/launcher/mode/LauncherMode;

    return-void
.end method

.method public setmModeClickListener(Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherModelIntroductionPreference;->mModeClickListener:Lcom/android/launcher/settings/LauncherModelIntroductionPreference$OnModeClickListener;

    return-void
.end method
