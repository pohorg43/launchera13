.class public final synthetic Landroidx/room/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;
.implements Lcom/android/launcher3/qsb/QsbContainerView$WidgetViewFactory;
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Landroidx/room/b;

.field public static final synthetic c:Landroidx/room/b;

.field public static final synthetic d:Landroidx/room/b;

.field public static final synthetic e:Landroidx/room/b;

.field public static final synthetic f:Landroidx/room/b;

.field public static final synthetic g:Landroidx/room/b;

.field public static final synthetic h:Landroidx/room/b;

.field public static final synthetic i:Landroidx/room/b;

.field public static final synthetic j:Landroidx/room/b;

.field public static final synthetic k:Landroidx/room/b;

.field public static final synthetic l:Landroidx/room/b;

.field public static final synthetic m:Landroidx/room/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->b:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->c:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->d:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->e:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->f:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->g:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->h:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->i:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->j:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->k:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->l:Landroidx/room/b;

    new-instance v0, Landroidx/room/b;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/room/b;-><init>(I)V

    sput-object v0, Landroidx/room/b;->m:Landroidx/room/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/room/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/b;->a:I

    packed-switch p0, :pswitch_data_24

    goto :goto_18

    :pswitch_6  #0x1
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x0
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getVersion()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :goto_18
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->simpleQueryForLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public call(Ljava/lang/Object;II)V
    .registers 4

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollBy(II)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Landroidx/room/b;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_10

    :pswitch_6  #0xa
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->B()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x9
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_10
    invoke-static {}, Lcom/oplus/statistics/record/ContentProviderRecorder;->a()Ljava/lang/String;

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

    iget p0, p0, Landroidx/room/b;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x6
    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->b(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController;

    move-result-object p0

    return-object p0

    :goto_b
    invoke-static {p1}, Lcom/android/quickstep/logging/SettingsChangeLogger;->c(Landroid/content/Context;)Lcom/android/quickstep/logging/SettingsChangeLogger;

    move-result-object p0

    return-object p0

    :pswitch_data_10
    .packed-switch 0x6
        :pswitch_6  #00000006
    .end packed-switch
.end method

.method public getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object p0
.end method

.method public newView(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/qsb/QsbContainerView$QsbFragment;->a(Landroid/content/Context;)Lcom/android/launcher3/qsb/QsbWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method public shouldIncludeView(Landroid/view/View;)Z
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/PagedView;->e(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
