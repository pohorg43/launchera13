.class public Lo/f0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lp/c$a;

.field public static final b:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const-string/jumbo v0, "nm"

    const-string v1, "c"

    const-string/jumbo v2, "w"

    const-string/jumbo v3, "o"

    const-string v4, "lc"

    const-string v5, "lj"

    const-string/jumbo v6, "ml"

    const-string v7, "hd"

    const-string v8, "d"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/f0;->a:Lp/c$a;

    const-string/jumbo v0, "n"

    const-string/jumbo v1, "v"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/f0;->b:Lp/c$a;

    return-void
.end method
