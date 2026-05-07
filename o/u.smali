.class public Lo/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "nm"

    const-string/jumbo v1, "mm"

    const-string v2, "hd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/u;->a:Lp/c$a;

    return-void
.end method
