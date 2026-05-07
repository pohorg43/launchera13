.class public final synthetic Lcom/android/launcher/powersave/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/powersave/e;->a:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    iput p2, p0, Lcom/android/launcher/powersave/e;->b:I

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/e;->a:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    iget p0, p0, Lcom/android/launcher/powersave/e;->b:I

    invoke-static {v0, p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->f(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;I)V

    return-void
.end method
