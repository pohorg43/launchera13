.class public Lcom/android/launcher/settings/LauncherIconFallenPreference;
.super Landroidx/preference/Preference;
.source ""


# static fields
.field private static final ANIMATION_IMAGE_FOLDER:Ljava/lang/String; = "icon_fallen_setting_animation"

.field private static final ANIMATION_JSON_FILE:Ljava/lang/String; = "icon_fallen_setting_animation.json"

.field private static final ANIMATION_JSON_FILE_BIG_FOLDSCREEN:Ljava/lang/String; = "icon_fallen_setting_animation_big_foldscreen.json"

.field private static final ANIMATION_NIGHTMODE_IMAGE_FOLDER:Ljava/lang/String; = "icon_fallen_setting_animation_night"

.field private static final ANIMATION_NIGHTMODE_JSON_FILE:Ljava/lang/String; = "icon_fallen_setting_animation_night.json"

.field private static final ANIMATION_NIGHTMODE_JSON_FILE_BIG_FOLDSCREEN:Ljava/lang/String; = "icon_fallen_setting_animation_night_big_foldscreen.json"

.field private static final ANIMATION_SCALE:F = 0.33f


# instance fields
.field private mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/settings/LauncherIconFallenPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/settings/LauncherIconFallenPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher/settings/LauncherIconFallenPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f0d0118

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

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

    iput-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coui/appcompat/darkmode/COUIDarkModeUtil;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const-string v0, "icon_fallen_setting_animation_night_big_foldscreen.json"

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_43

    :cond_26
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const-string v0, "icon_fallen_setting_animation_night.json"

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_43

    :cond_2e
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const-string v0, "icon_fallen_setting_animation_big_foldscreen.json"

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_43

    :cond_3c
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const-string v0, "icon_fallen_setting_animation.json"

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_43
    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const v0, 0x3ea8f5c3  # 0.33f

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setScale(F)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    iget-object p1, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    iget-object p0, p0, Lcom/android/launcher/settings/LauncherIconFallenPreference;->mAnimationView:Lcom/oplus/anim/EffectiveAnimationView;

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    :cond_5c
    return-void
.end method
