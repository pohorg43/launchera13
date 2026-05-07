.class public final synthetic Landroidx/room/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;
.implements Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Landroidx/room/f;

.field public static final synthetic c:Landroidx/room/f;

.field public static final synthetic d:Landroidx/room/f;

.field public static final synthetic e:Landroidx/room/f;

.field public static final synthetic f:Landroidx/room/f;

.field public static final synthetic g:Landroidx/room/f;

.field public static final synthetic h:Landroidx/room/f;

.field public static final synthetic i:Landroidx/room/f;

.field public static final synthetic j:Landroidx/room/f;

.field public static final synthetic k:Landroidx/room/f;

.field public static final synthetic l:Landroidx/room/f;

.field public static final synthetic m:Landroidx/room/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->b:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->c:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->d:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->e:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->f:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->g:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->h:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->i:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->j:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->k:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->l:Landroidx/room/f;

    new-instance v0, Landroidx/room/f;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/room/f;-><init>(I)V

    sput-object v0, Landroidx/room/f;->m:Landroidx/room/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/room/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/f;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_11

    :pswitch_6  #0x0
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPageSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :goto_11
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public call(Ljava/lang/Object;II)V
    .registers 4

    check-cast p1, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1, p2, p3}, Lcom/android/quickstep/util/TaskViewSimulator;->setTaskRectTranslation(II)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Landroidx/room/f;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_10

    :pswitch_6  #0xa
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->f()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x9
    invoke-static {}, Lcom/oplus/statistics/OTrackContext;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_10
    invoke-static {}, Lcom/oplus/statistics/record/ContentProviderRecorder;->c()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_16
    .packed-switch 0x9
        :pswitch_b  #00000009
        :pswitch_6  #0000000a
    .end packed-switch
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/f;->a:I

    packed-switch p0, :pswitch_data_20

    goto :goto_1a

    :pswitch_6  #0x5
    invoke-static {p1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->a(Landroid/content/Context;)Lcom/android/launcher3/util/window/RefreshRateTracker;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x4
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;->a(Landroid/content/Context;)Lcom/android/launcher3/uioverrides/plugins/PluginManagerWrapper;

    move-result-object p0

    return-object p0

    :pswitch_10  #0x3
    invoke-static {p1}, Lcom/android/launcher3/model/ItemInstallQueue;->g(Landroid/content/Context;)Lcom/android/launcher3/model/ItemInstallQueue;

    move-result-object p0

    return-object p0

    :pswitch_15  #0x2
    invoke-static {p1}, Lcom/android/launcher3/dot/SmallAppUtils;->a(Landroid/content/Context;)Lcom/android/launcher3/dot/SmallAppUtils;

    move-result-object p0

    return-object p0

    :goto_1a
    new-instance p0, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    return-object p0

    :pswitch_data_20
    .packed-switch 0x2
        :pswitch_15  #00000002
        :pswitch_10  #00000003
        :pswitch_b  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method

.method public getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object p0
.end method
