.class public final synthetic Lcom/android/common/util/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/common/util/e0;

.field public static final synthetic c:Lcom/android/common/util/e0;

.field public static final synthetic d:Lcom/android/common/util/e0;

.field public static final synthetic e:Lcom/android/common/util/e0;

.field public static final synthetic f:Lcom/android/common/util/e0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/e0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/e0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e0;->b:Lcom/android/common/util/e0;

    new-instance v0, Lcom/android/common/util/e0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/e0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e0;->c:Lcom/android/common/util/e0;

    new-instance v0, Lcom/android/common/util/e0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/e0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e0;->d:Lcom/android/common/util/e0;

    new-instance v0, Lcom/android/common/util/e0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/e0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e0;->e:Lcom/android/common/util/e0;

    new-instance v0, Lcom/android/common/util/e0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/e0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e0;->f:Lcom/android/common/util/e0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/e0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget p0, p0, Lcom/android/common/util/e0;->a:I

    packed-switch p0, :pswitch_data_1a

    goto :goto_16

    :pswitch_6  #0x3
    invoke-static {}, Lcom/android/launcher3/card/seed/SeedCardClient;->c()V

    return-void

    :pswitch_a  #0x2
    invoke-static {}, Lcom/android/launcher3/card/EngineCardView;->i()V

    return-void

    :pswitch_e  #0x1
    invoke-static {}, Lcom/android/launcher/Launcher;->v0()V

    return-void

    :pswitch_12  #0x0
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper$mFoldScreenObserver$1;->a()V

    return-void

    :goto_16
    invoke-static {}, Lcom/android/overlay/OverlayKeepAliveService;->c()V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_12  #00000000
        :pswitch_e  #00000001
        :pswitch_a  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
