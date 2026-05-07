.class public final synthetic Lcom/android/common/util/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/common/util/e;

.field public static final synthetic c:Lcom/android/common/util/e;

.field public static final synthetic d:Lcom/android/common/util/e;

.field public static final synthetic e:Lcom/android/common/util/e;

.field public static final synthetic f:Lcom/android/common/util/e;

.field public static final synthetic g:Lcom/android/common/util/e;

.field public static final synthetic h:Lcom/android/common/util/e;

.field public static final synthetic i:Lcom/android/common/util/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/e;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e;->b:Lcom/android/common/util/e;

    new-instance v0, Lcom/android/common/util/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/e;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e;->c:Lcom/android/common/util/e;

    new-instance v0, Lcom/android/common/util/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/e;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e;->d:Lcom/android/common/util/e;

    new-instance v0, Lcom/android/common/util/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/e;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e;->e:Lcom/android/common/util/e;

    new-instance v0, Lcom/android/common/util/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/e;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e;->f:Lcom/android/common/util/e;

    new-instance v0, Lcom/android/common/util/e;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/e;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e;->g:Lcom/android/common/util/e;

    new-instance v0, Lcom/android/common/util/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/common/util/e;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e;->h:Lcom/android/common/util/e;

    new-instance v0, Lcom/android/common/util/e;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/common/util/e;-><init>(I)V

    sput-object v0, Lcom/android/common/util/e;->i:Lcom/android/common/util/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget p0, p0, Lcom/android/common/util/e;->a:I

    packed-switch p0, :pswitch_data_28

    goto :goto_24

    :pswitch_6  #0x6
    invoke-static {}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToAssistantScreen$2;->d()V

    return-void

    :pswitch_a  #0x5
    sget-object p0, Lr1/b;->a:Lr1/b;

    invoke-virtual {p0}, Lr1/b;->a()V

    return-void

    :pswitch_10  #0x4
    invoke-static {}, Lcom/android/quickstep/AnimatedFloat;->a()V

    return-void

    :pswitch_14  #0x3
    invoke-static {}, Lcom/android/launcher3/icons/cache/HandlerRunnable;->c()V

    return-void

    :pswitch_18  #0x2
    invoke-static {}, Lcom/android/launcher3/card/uscard/USRelatedPermissionManager;->b()V

    return-void

    :pswitch_1c  #0x1
    invoke-static {}, Lcom/android/common/util/SoundPlayerUtils;->a()V

    return-void

    :pswitch_20  #0x0
    invoke-static {}, Lcom/android/common/util/ConfigCacheWrapper;->a()V

    return-void

    :goto_24
    invoke-static {}, Lcom/oplus/quickstep/utils/FingerPrintUtils;->a()V

    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_1c  #00000001
        :pswitch_18  #00000002
        :pswitch_14  #00000003
        :pswitch_10  #00000004
        :pswitch_a  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
