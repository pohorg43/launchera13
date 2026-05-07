.class public final synthetic Landroidx/room/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContentValues;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/k;->a:Ljava/lang/String;

    iput p2, p0, Landroidx/room/k;->b:I

    iput-object p3, p0, Landroidx/room/k;->c:Landroid/content/ContentValues;

    iput-object p4, p0, Landroidx/room/k;->d:Ljava/lang/String;

    iput-object p5, p0, Landroidx/room/k;->e:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iget-object v0, p0, Landroidx/room/k;->a:Ljava/lang/String;

    iget v1, p0, Landroidx/room/k;->b:I

    iget-object v2, p0, Landroidx/room/k;->c:Landroid/content/ContentValues;

    iget-object v3, p0, Landroidx/room/k;->d:Ljava/lang/String;

    iget-object v4, p0, Landroidx/room/k;->e:[Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Landroidx/sqlite/db/SupportSQLiteDatabase;

    invoke-static/range {v0 .. v5}, Landroidx/room/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->d(Ljava/lang/String;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/Object;Landroidx/sqlite/db/SupportSQLiteDatabase;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
