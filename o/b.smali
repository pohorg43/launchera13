.class public Lo/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lp/c$a;

.field public static b:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "a"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/b;->a:Lp/c$a;

    const-string v0, "fc"

    const-string/jumbo v1, "sc"

    const-string/jumbo v2, "sw"

    const-string/jumbo v3, "t"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/b;->b:Lp/c$a;

    return-void
.end method
