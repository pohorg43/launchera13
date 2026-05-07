.class public final synthetic Lcom/android/common/util/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/common/util/a;

.field public static final synthetic c:Lcom/android/common/util/a;

.field public static final synthetic d:Lcom/android/common/util/a;

.field public static final synthetic e:Lcom/android/common/util/a;

.field public static final synthetic f:Lcom/android/common/util/a;

.field public static final synthetic g:Lcom/android/common/util/a;

.field public static final synthetic h:Lcom/android/common/util/a;

.field public static final synthetic i:Lcom/android/common/util/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/a;-><init>(I)V

    sput-object v0, Lcom/android/common/util/a;->b:Lcom/android/common/util/a;

    new-instance v0, Lcom/android/common/util/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/a;-><init>(I)V

    sput-object v0, Lcom/android/common/util/a;->c:Lcom/android/common/util/a;

    new-instance v0, Lcom/android/common/util/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/a;-><init>(I)V

    sput-object v0, Lcom/android/common/util/a;->d:Lcom/android/common/util/a;

    new-instance v0, Lcom/android/common/util/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/a;-><init>(I)V

    sput-object v0, Lcom/android/common/util/a;->e:Lcom/android/common/util/a;

    new-instance v0, Lcom/android/common/util/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/a;-><init>(I)V

    sput-object v0, Lcom/android/common/util/a;->f:Lcom/android/common/util/a;

    new-instance v0, Lcom/android/common/util/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/a;-><init>(I)V

    sput-object v0, Lcom/android/common/util/a;->g:Lcom/android/common/util/a;

    new-instance v0, Lcom/android/common/util/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/common/util/a;-><init>(I)V

    sput-object v0, Lcom/android/common/util/a;->h:Lcom/android/common/util/a;

    new-instance v0, Lcom/android/common/util/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/common/util/a;-><init>(I)V

    sput-object v0, Lcom/android/common/util/a;->i:Lcom/android/common/util/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget p0, p0, Lcom/android/common/util/a;->a:I

    packed-switch p0, :pswitch_data_26

    goto :goto_22

    :pswitch_6  #0x6
    invoke-static {}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createSplitWindowAnimationToHome$1;->b()V

    return-void

    :pswitch_a  #0x5
    invoke-static {}, Lcom/android/launcher3/icons/GraphicsUtils;->a()V

    return-void

    :pswitch_e  #0x4
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->b()V

    return-void

    :pswitch_12  #0x3
    invoke-static {}, Lcom/android/launcher3/Workspace;->s()V

    return-void

    :pswitch_16  #0x2
    invoke-static {}, Lcom/android/launcher3/OplusWorkspace;->G()V

    return-void

    :pswitch_1a  #0x1
    invoke-static {}, Lcom/android/common/util/SoundPlayerUtils;->f()V

    return-void

    :pswitch_1e  #0x0
    invoke-static {}, Lcom/android/common/util/AllAppsBoost;->a()V

    return-void

    :goto_22
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->c()V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_1a  #00000001
        :pswitch_16  #00000002
        :pswitch_12  #00000003
        :pswitch_e  #00000004
        :pswitch_a  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
