.class public final synthetic Landroidx/room/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Landroidx/room/c;

.field public static final synthetic c:Landroidx/room/c;

.field public static final synthetic d:Landroidx/room/c;

.field public static final synthetic e:Landroidx/room/c;

.field public static final synthetic f:Landroidx/room/c;

.field public static final synthetic g:Landroidx/room/c;

.field public static final synthetic h:Landroidx/room/c;

.field public static final synthetic i:Landroidx/room/c;

.field public static final synthetic j:Landroidx/room/c;

.field public static final synthetic k:Landroidx/room/c;

.field public static final synthetic l:Landroidx/room/c;

.field public static final synthetic m:Landroidx/room/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->b:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->c:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->d:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->e:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->f:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->g:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->h:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->i:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->j:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->k:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->l:Landroidx/room/c;

    new-instance v0, Landroidx/room/c;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroidx/room/c;-><init>(I)V

    sput-object v0, Landroidx/room/c;->m:Landroidx/room/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/room/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/c;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_11

    :pswitch_6  #0x0
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result p0

    :goto_c
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_11
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result p0

    goto :goto_c

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method

.method public call(Ljava/lang/Object;II)V
    .registers 4

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Landroidx/room/c;->a:I

    packed-switch p0, :pswitch_data_16

    goto :goto_10

    :pswitch_6  #0xa
    invoke-static {}, Lcom/oplus/statistics/StatisticsExceptionHandler;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x9
    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_10
    invoke-static {}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->b()Ljava/lang/String;

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

    iget p0, p0, Landroidx/room/c;->a:I

    packed-switch p0, :pswitch_data_1a

    goto :goto_15

    :pswitch_6  #0x7
    invoke-static {p1}, Lcom/android/quickstep/RecentsModel;->d(Landroid/content/Context;)Lcom/android/quickstep/RecentsModel;

    move-result-object p0

    return-object p0

    :pswitch_b  #0x6
    invoke-static {p1}, Lcom/android/launcher3/widget/custom/CustomWidgetManager;->a(Landroid/content/Context;)Lcom/android/launcher3/widget/custom/CustomWidgetManager;

    move-result-object p0

    return-object p0

    :pswitch_10  #0x5
    invoke-static {p1}, Lcom/android/launcher3/util/DynamicResource;->a(Landroid/content/Context;)Lcom/android/launcher3/util/DynamicResource;

    move-result-object p0

    return-object p0

    :goto_15
    invoke-static {p1}, Lcom/android/quickstep/TopTaskTracker;->f(Landroid/content/Context;)Lcom/android/quickstep/TopTaskTracker;

    move-result-object p0

    return-object p0

    :pswitch_data_1a
    .packed-switch 0x5
        :pswitch_10  #00000005
        :pswitch_b  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget p0, p0, Landroidx/room/c;->a:I

    packed-switch p0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void

    :goto_10
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_6  #00000002
    .end packed-switch
.end method
