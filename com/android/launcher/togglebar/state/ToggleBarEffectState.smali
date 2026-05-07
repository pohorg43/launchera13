.class public Lcom/android/launcher/togglebar/state/ToggleBarEffectState;
.super Lcom/android/launcher/togglebar/state/ToggleBarBaseState;
.source ""


# static fields
.field public static final EFFECT_STATE:Ljava/lang/String; = "effect"

.field private static final TAG:Ljava/lang/String; = "ToggleBarEffectState"


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "effect"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;-><init>(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createUIController()Lcom/android/launcher/togglebar/controller/ToggleBarBaseUIController;
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {v0, p0}, Lcom/android/launcher/togglebar/controller/ToggleBarEffectUIController;-><init>(Lcom/android/launcher/Launcher;)V

    return-object v0
.end method

.method public getToolbarTitle()Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->mLauncher:Lcom/android/launcher/Launcher;

    const v0, 0x7f120549

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
