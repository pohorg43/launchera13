.class public Lcom/android/launcher/settings/LauncherDockExpandPreference;
.super Landroidx/preference/Preference;
.source ""


# static fields
.field private static final ANIMATION_SCALE:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LauncherDockExpandPreference"


# instance fields
.field private mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/settings/LauncherDockExpandPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/settings/LauncherDockExpandPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/settings/LauncherDockExpandPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0116

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private setAnimSource()V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v0, 0x7f11000a

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_45

    :cond_17
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v0, 0x7f110009

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_45

    :cond_20
    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandSwitchManager;->isSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v0, 0x7f11000c

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_45

    :cond_35
    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v0, 0x7f11000b

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(I)V

    goto :goto_45

    :cond_3e
    const-string p0, "LauncherDockExpandPreference"

    const-string v0, "device info is invalid"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_45
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_7
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a015c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/oplus/anim/EffectiveAnimationView;

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/android/launcher/settings/LauncherDockExpandPreference;->playAnimation()V

    return-void
.end method

.method public playAnimation()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {v0}, Lcom/oplus/anim/EffectiveAnimationView;->cancelAnimation()V

    :cond_f
    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherDockExpandPreference;->setAnimSource()V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v1, 0x3ea8f5c3  # 0.33f

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setScale(F)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherDockExpandPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    :cond_2b
    return-void
.end method
