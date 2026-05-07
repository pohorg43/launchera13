.class public final synthetic Lcom/android/launcher/touch/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/touch/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/LauncherAppState;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/touch/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/logging/SettingsChangeLogger;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/touch/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/touch/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/touch/c;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher/touch/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/logging/SettingsChangeLogger;

    invoke-static {p0, p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->d(Lcom/android/quickstep/logging/SettingsChangeLogger;Z)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/launcher/touch/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/LauncherAppState;

    invoke-static {p0, p1}, Lcom/android/launcher3/LauncherAppState;->c(Lcom/android/launcher3/LauncherAppState;Z)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/launcher/touch/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    invoke-static {p0, p1}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->e(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Z)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher/touch/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->a(Lcom/android/quickstep/util/RecentsOrientedState;Z)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
