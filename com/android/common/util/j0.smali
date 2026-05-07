.class public final synthetic Lcom/android/common/util/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/common/util/j0;

.field public static final synthetic c:Lcom/android/common/util/j0;

.field public static final synthetic d:Lcom/android/common/util/j0;

.field public static final synthetic e:Lcom/android/common/util/j0;

.field public static final synthetic f:Lcom/android/common/util/j0;

.field public static final synthetic g:Lcom/android/common/util/j0;

.field public static final synthetic h:Lcom/android/common/util/j0;

.field public static final synthetic i:Lcom/android/common/util/j0;

.field public static final synthetic j:Lcom/android/common/util/j0;

.field public static final synthetic k:Lcom/android/common/util/j0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->b:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->c:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->d:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->e:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->f:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->g:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->h:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->i:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->j:Lcom/android/common/util/j0;

    new-instance v0, Lcom/android/common/util/j0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/common/util/j0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/j0;->k:Lcom/android/common/util/j0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget p0, p0, Lcom/android/common/util/j0;->a:I

    packed-switch p0, :pswitch_data_6e

    goto :goto_6a

    :pswitch_6  #0x8
    invoke-static {}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$3;->e()V

    return-void

    :pswitch_a  #0x7
    invoke-static {}, Lcom/oplus/quickstep/bracketspace/BracketModeHelper;->a()V

    return-void

    :pswitch_e  #0x6
    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->c()V

    return-void

    :pswitch_12  #0x5
    sget-object p0, Lr1/b;->a:Lr1/b;

    const-string p0, "BrowserLauncherClient-BrowserOverlayKeepAliveService"

    :try_start_16
    const-string/jumbo v0, "stopKeepAlive"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lr1/b;->a:Lr1/b;

    sget-object v1, Lr1/b;->c:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    goto :goto_2a

    :cond_24
    const-string v1, "mActivity"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2a
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_33

    goto :goto_3e

    :cond_33
    invoke-virtual {v1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    sget-object v2, Ly2/p;->a:Ly2/p;
    :try_end_38
    .catchall {:try_start_16 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception v0

    invoke-static {v0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_3e
    invoke-static {v2}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unbindService error = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    const/4 p0, 0x0

    sput-boolean p0, Lr1/b;->b:Z

    return-void

    :pswitch_56  #0x4
    invoke-static {}, Lcom/android/quickstep/TaskUtils;->a()V

    return-void

    :pswitch_5a  #0x3
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarViewController;->e()V

    return-void

    :pswitch_5e  #0x2
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandUtils;->a()V

    return-void

    :pswitch_62  #0x1
    invoke-static {}, Lcom/android/launcher/Launcher;->k0()V

    return-void

    :pswitch_66  #0x0
    invoke-static {}, Lcom/android/common/util/TemporaryCacheHelper;->a()V

    return-void

    :goto_6a
    invoke-static {}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->b()V

    return-void

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_62  #00000001
        :pswitch_5e  #00000002
        :pswitch_5a  #00000003
        :pswitch_56  #00000004
        :pswitch_12  #00000005
        :pswitch_e  #00000006
        :pswitch_a  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method
