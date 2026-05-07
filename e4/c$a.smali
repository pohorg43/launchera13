.class public final Le4/c$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    check-cast p0, Le4/b;

    invoke-virtual {p0, p1, p2, p3}, Le4/b;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    check-cast p0, Le4/b;

    invoke-virtual {p0, p1, p2, p3}, Le4/b;->c(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic c(Le4/c;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x0

    :cond_5
    check-cast p0, Le4/b;

    invoke-virtual {p0, p1, p2, p3}, Le4/b;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
