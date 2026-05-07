.class public final enum Ln/a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Ln/a;

.field public static final enum c:Ln/a;

.field public static final synthetic d:[Ln/a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    new-instance v0, Ln/a;

    const-string v1, "JSON"

    const/4 v2, 0x0

    const-string v3, ".json"

    invoke-direct {v0, v1, v2, v3}, Ln/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Ln/a;->b:Ln/a;

    new-instance v1, Ln/a;

    const-string v3, "ZIP"

    const/4 v4, 0x1

    const-string v5, ".zip"

    invoke-direct {v1, v3, v4, v5}, Ln/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Ln/a;->c:Ln/a;

    const/4 v3, 0x2

    new-array v3, v3, [Ln/a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Ln/a;->d:[Ln/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ln/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ln/a;
    .registers 2

    const-class v0, Ln/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln/a;

    return-object p0
.end method

.method public static values()[Ln/a;
    .registers 1

    sget-object v0, Ln/a;->d:[Ln/a;

    invoke-virtual {v0}, [Ln/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln/a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Ln/a;->a:Ljava/lang/String;

    return-object p0
.end method
