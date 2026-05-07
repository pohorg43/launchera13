.class public final synthetic Lcom/android/common/util/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ZI)V
    .registers 5

    iput p3, p0, Lcom/android/common/util/z;->a:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_e

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/z;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/common/util/z;->c:Z

    return-void

    :cond_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/common/util/z;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/common/util/z;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/common/util/z;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/common/util/z;->b:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/common/util/z;->c:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->d(Landroid/content/Context;Z)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/common/util/z;->b:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/common/util/z;->c:Z

    invoke-static {v0, p0}, Lcom/android/common/util/LauncherModeUtil;->a(Landroid/content/Context;Z)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/common/util/z;->b:Landroid/content/Context;

    iget-boolean p0, p0, Lcom/android/common/util/z;->c:Z

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationController;->j(Landroid/content/Context;Z)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
