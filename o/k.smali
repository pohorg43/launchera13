.class public Lo/k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-string v0, "fFamily"

    const-string v1, "fName"

    const-string v2, "fStyle"

    const-string v3, "ascent"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/k;->a:Lp/c$a;

    return-void
.end method
