.class public final synthetic Lcom/android/launcher/operators/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Lcom/android/launcher3/LauncherModel;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;I)V
    .registers 5

    iput p3, p0, Lcom/android/launcher/operators/c;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/operators/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher/operators/c;->c:Lcom/android/launcher3/LauncherModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/launcher/operators/c;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/launcher/operators/c;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/operators/c;->c:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, p0}, Lcom/android/launcher/operators/GeneralCustomizer;->a(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/launcher/operators/c;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/operators/c;->c:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, p0}, Lcom/android/launcher/operators/GeneralCotaCustomizer;->e(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/launcher/operators/c;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/launcher/operators/c;->c:Lcom/android/launcher3/LauncherModel;

    invoke-static {v0, p0}, Lcom/android/launcher/operators/OobeLayoutCustomize;->b(Landroid/content/Context;Lcom/android/launcher3/LauncherModel;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
