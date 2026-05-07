.class public final synthetic Landroidx/room/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper$SurfaceControlTransactionFactory;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Landroidx/room/d;

.field public static final synthetic c:Landroidx/room/d;

.field public static final synthetic d:Landroidx/room/d;

.field public static final synthetic e:Landroidx/room/d;

.field public static final synthetic f:Landroidx/room/d;

.field public static final synthetic g:Landroidx/room/d;

.field public static final synthetic h:Landroidx/room/d;

.field public static final synthetic i:Landroidx/room/d;

.field public static final synthetic j:Landroidx/room/d;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->b:Landroidx/room/d;

    new-instance v0, Landroidx/room/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->c:Landroidx/room/d;

    new-instance v0, Landroidx/room/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->d:Landroidx/room/d;

    new-instance v0, Landroidx/room/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->e:Landroidx/room/d;

    new-instance v0, Landroidx/room/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->f:Landroidx/room/d;

    new-instance v0, Landroidx/room/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->g:Landroidx/room/d;

    new-instance v0, Landroidx/room/d;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->h:Landroidx/room/d;

    new-instance v0, Landroidx/room/d;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->i:Landroidx/room/d;

    new-instance v0, Landroidx/room/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/room/d;-><init>(I)V

    sput-object v0, Landroidx/room/d;->j:Landroidx/room/d;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/room/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/d;->a:I

    packed-switch p0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_11
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeInsert()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 3

    invoke-static {p1, p2}, Lcom/android/launcher3/OplusWorkspace;->T(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Landroidx/room/d;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x7
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->u()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_b
    invoke-static {}, Lcom/oplus/statistics/data/TrackEvent;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_10
    .packed-switch 0x7
        :pswitch_6  #00000007
    .end packed-switch
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/util/UiThreadHelper;->a(Landroid/content/Context;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public getTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object p0
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget p0, p0, Landroidx/room/d;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_c

    :pswitch_6  #0x3
    check-cast p3, Landroid/graphics/Insets;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :goto_c
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x3
        :pswitch_6  #00000003
    .end packed-switch
.end method
