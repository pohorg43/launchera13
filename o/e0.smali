.class public Lo/e0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string/jumbo v0, "nm"

    const-string v1, "ind"

    const-string v2, "ks"

    const-string v3, "hd"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/e0;->a:Lp/c$a;

    return-void
.end method
