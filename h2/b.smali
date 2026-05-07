.class public final enum Lh2/b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lh2/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:[Lh2/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lh2/b;

    const-string v1, "getAllKey"

    const/4 v2, 0x0

    const-string v3, "getAll"

    invoke-direct {v0, v1, v2, v3}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lh2/b;

    const-string v3, "getString"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lh2/b;

    const-string v5, "getInt"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lh2/b;

    const-string v7, "getLong"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v7, Lh2/b;

    const-string v9, "getFloat"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v9, Lh2/b;

    const-string v11, "getBoolean"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v11, Lh2/b;

    const-string v13, "putString"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v13, Lh2/b;

    const-string v15, "putInt"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v15, Lh2/b;

    const-string v14, "putLong"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v14, Lh2/b;

    const-string v12, "putFloat"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v12, Lh2/b;

    const-string v10, "putBoolean"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lh2/b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v10, 0xb

    new-array v10, v10, [Lh2/b;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v6

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v15, v10, v0

    const/16 v0, 0x9

    aput-object v14, v10, v0

    aput-object v12, v10, v8

    sput-object v10, Lh2/b;->a:[Lh2/b;

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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lh2/b;
    .registers 2

    const-class v0, Lh2/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lh2/b;

    return-object p0
.end method

.method public static values()[Lh2/b;
    .registers 1

    sget-object v0, Lh2/b;->a:[Lh2/b;

    invoke-virtual {v0}, [Lh2/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lh2/b;

    return-object v0
.end method
