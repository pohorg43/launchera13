.class public final enum Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/wallpaper/sdk/TraceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TraceLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

.field public static final enum ERROR:Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

.field public static final enum INFO:Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    const-string v1, "INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;->INFO:Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    new-instance v1, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;->ERROR:Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;->$VALUES:[Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;
    .registers 2

    const-class v0, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    return-object p0
.end method

.method public static values()[Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;
    .registers 1

    sget-object v0, Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;->$VALUES:[Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    invoke-virtual {v0}, [Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/wallpaper/sdk/TraceUtil$TraceLevel;

    return-object v0
.end method
