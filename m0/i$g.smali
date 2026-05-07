.class public final enum Lm0/i$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lm0/i$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lm0/i$g;

.field public static final enum b:Lm0/i$g;

.field public static final enum c:Lm0/i$g;

.field public static final enum d:Lm0/i$g;

.field public static final enum e:Lm0/i$g;

.field public static final enum f:Lm0/i$g;

.field public static final synthetic g:[Lm0/i$g;


# direct methods
.method public static constructor <clinit>()V
    .registers 13

    new-instance v0, Lm0/i$g;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lm0/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lm0/i$g;->a:Lm0/i$g;

    new-instance v1, Lm0/i$g;

    const-string v3, "RESOURCE_CACHE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lm0/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lm0/i$g;->b:Lm0/i$g;

    new-instance v3, Lm0/i$g;

    const-string v5, "DATA_CACHE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lm0/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lm0/i$g;->c:Lm0/i$g;

    new-instance v5, Lm0/i$g;

    const-string v7, "SOURCE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lm0/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lm0/i$g;->d:Lm0/i$g;

    new-instance v7, Lm0/i$g;

    const-string v9, "ENCODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lm0/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lm0/i$g;->e:Lm0/i$g;

    new-instance v9, Lm0/i$g;

    const-string v11, "FINISHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lm0/i$g;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lm0/i$g;->f:Lm0/i$g;

    const/4 v11, 0x6

    new-array v11, v11, [Lm0/i$g;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lm0/i$g;->g:[Lm0/i$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lm0/i$g;
    .registers 2

    const-class v0, Lm0/i$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lm0/i$g;

    return-object p0
.end method

.method public static values()[Lm0/i$g;
    .registers 1

    sget-object v0, Lm0/i$g;->g:[Lm0/i$g;

    invoke-virtual {v0}, [Lm0/i$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lm0/i$g;

    return-object v0
.end method
