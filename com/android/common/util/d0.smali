.class public final synthetic Lcom/android/common/util/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/common/util/d0;

.field public static final synthetic c:Lcom/android/common/util/d0;

.field public static final synthetic d:Lcom/android/common/util/d0;

.field public static final synthetic e:Lcom/android/common/util/d0;

.field public static final synthetic f:Lcom/android/common/util/d0;

.field public static final synthetic g:Lcom/android/common/util/d0;

.field public static final synthetic h:Lcom/android/common/util/d0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->b:Lcom/android/common/util/d0;

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->c:Lcom/android/common/util/d0;

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->d:Lcom/android/common/util/d0;

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->e:Lcom/android/common/util/d0;

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->f:Lcom/android/common/util/d0;

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->g:Lcom/android/common/util/d0;

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->h:Lcom/android/common/util/d0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget p0, p0, Lcom/android/common/util/d0;->a:I

    packed-switch p0, :pswitch_data_22

    goto :goto_1e

    :pswitch_6  #0x5
    invoke-static {}, Lcom/android/wm/shell/bubbles/BubbleFlyoutView;->a()V

    return-void

    :pswitch_a  #0x4
    invoke-static {}, Lcom/android/systemui/animation/DialogLaunchAnimator$createActivityLaunchController$1;->a()V

    return-void

    :pswitch_e  #0x3
    invoke-static {}, Lcom/android/launcher3/card/seed/ExtraDataRuleSource;->a()V

    return-void

    :pswitch_12  #0x2
    invoke-static {}, Lcom/android/launcher/folder/recommend/RecommendContentSwitchHelper;->c()V

    return-void

    :pswitch_16  #0x1
    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->a()V

    return-void

    :pswitch_1a  #0x0
    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->a()V

    return-void

    :goto_1e
    invoke-static {}, Lcom/oplus/quickstep/utils/GestureBooster;->a()V

    return-void

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_16  #00000001
        :pswitch_12  #00000002
        :pswitch_e  #00000003
        :pswitch_a  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
