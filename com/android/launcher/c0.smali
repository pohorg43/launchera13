.class public final synthetic Lcom/android/launcher/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/launcher/c0;

.field public static final synthetic c:Lcom/android/launcher/c0;

.field public static final synthetic d:Lcom/android/launcher/c0;

.field public static final synthetic e:Lcom/android/launcher/c0;

.field public static final synthetic f:Lcom/android/launcher/c0;

.field public static final synthetic g:Lcom/android/launcher/c0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/c0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/c0;->b:Lcom/android/launcher/c0;

    new-instance v0, Lcom/android/launcher/c0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher/c0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/c0;->c:Lcom/android/launcher/c0;

    new-instance v0, Lcom/android/launcher/c0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher/c0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/c0;->d:Lcom/android/launcher/c0;

    new-instance v0, Lcom/android/launcher/c0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher/c0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/c0;->e:Lcom/android/launcher/c0;

    new-instance v0, Lcom/android/launcher/c0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/launcher/c0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/c0;->f:Lcom/android/launcher/c0;

    new-instance v0, Lcom/android/launcher/c0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/launcher/c0;-><init>(I)V

    sput-object v0, Lcom/android/launcher/c0;->g:Lcom/android/launcher/c0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget p0, p0, Lcom/android/launcher/c0;->a:I

    packed-switch p0, :pswitch_data_1e

    goto :goto_1a

    :pswitch_6  #0x4
    invoke-static {}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->A0()V

    return-void

    :pswitch_a  #0x3
    invoke-static {}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDataManager;->c()V

    return-void

    :pswitch_e  #0x2
    invoke-static {}, Lcom/android/launcher3/card/uscard/USCardContainerView;->q()V

    return-void

    :pswitch_12  #0x1
    invoke-static {}, Lcom/android/launcher3/SecondaryDropTarget;->b()V

    return-void

    :pswitch_16  #0x0
    invoke-static {}, Lcom/android/launcher/Launcher;->Q()V

    return-void

    :goto_1a
    invoke-static {}, Lcom/oplus/quickstep/taskviewremoteanim/DeviceOrientationHelper;->b()V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_12  #00000001
        :pswitch_e  #00000002
        :pswitch_a  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
