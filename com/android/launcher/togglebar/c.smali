.class public final synthetic Lcom/android/launcher/togglebar/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;

.field public final synthetic c:Lcom/android/launcher3/LauncherState$ScaleAndTranslation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;I)V
    .registers 4

    iput p3, p0, Lcom/android/launcher/togglebar/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/c;->b:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;

    iput-object p2, p0, Lcom/android/launcher/togglebar/c;->c:Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/togglebar/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/togglebar/c;->b:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;

    iget-object p0, p0, Lcom/android/launcher/togglebar/c;->c:Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    invoke-static {v0, p0}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->b(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/android/launcher/togglebar/c;->b:Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;

    iget-object p0, p0, Lcom/android/launcher/togglebar/c;->c:Lcom/android/launcher3/LauncherState$ScaleAndTranslation;

    invoke-static {v0, p0}, Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;->a(Lcom/android/launcher/togglebar/ToggleBarHookTransitionController;Lcom/android/launcher3/LauncherState$ScaleAndTranslation;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
