.class public final synthetic Landroidx/room/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;


# static fields
.field public static final synthetic b:Landroidx/room/n;

.field public static final synthetic c:Landroidx/room/n;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Landroidx/room/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/room/n;-><init>(I)V

    sput-object v0, Landroidx/room/n;->b:Landroidx/room/n;

    new-instance v0, Landroidx/room/n;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/room/n;-><init>(I)V

    sput-object v0, Landroidx/room/n;->c:Landroidx/room/n;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Landroidx/room/n;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Landroidx/room/n;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_d

    :pswitch_6  #0x0
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-static {p1}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->k(Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_d
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-interface {p1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->getMaximumSize()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
