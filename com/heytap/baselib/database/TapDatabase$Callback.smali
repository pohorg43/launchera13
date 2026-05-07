.class public final Lcom/heytap/baselib/database/TapDatabase$Callback;
.super Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/heytap/baselib/database/TapDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# virtual methods
.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    sget-object p0, Lcom/heytap/baselib/database/TapDatabase;->a:Ly2/e;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method public onUpgrade(Landroidx/sqlite/db/SupportSQLiteDatabase;II)V
    .registers 4

    if-eqz p1, :cond_c

    if-lt p2, p3, :cond_5

    goto :goto_c

    :cond_5
    sget-object p0, Lcom/heytap/baselib/database/TapDatabase;->a:Ly2/e;

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p0

    :cond_c
    :goto_c
    return-void
.end method
