.class public final synthetic Landroidx/room/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic b:Landroidx/room/o;

.field public static final synthetic c:Landroidx/room/o;

.field public static final synthetic d:Landroidx/room/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/o;-><init>(I)V

    sput-object v0, Landroidx/room/o;->b:Landroidx/room/o;

    new-instance v0, Landroidx/room/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/room/o;-><init>(I)V

    sput-object v0, Landroidx/room/o;->c:Landroidx/room/o;

    new-instance v0, Landroidx/room/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/room/o;-><init>(I)V

    sput-object v0, Landroidx/room/o;->d:Landroidx/room/o;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/room/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/o;->a:I

    packed-switch p0, :pswitch_data_24

    goto :goto_18

    :pswitch_6  #0x1
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->yieldIfContendedSafely()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x0
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-static {p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->m(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_18
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteStatement;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
