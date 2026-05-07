.class public final enum Lcom/oplus/epona/ResponseCode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/epona/ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/epona/ResponseCode;

.field public static final enum FAILED:Lcom/oplus/epona/ResponseCode;

.field public static final enum PERMISSION_DENY:Lcom/oplus/epona/ResponseCode;

.field public static final enum SUCCESS:Lcom/oplus/epona/ResponseCode;


# instance fields
.field private code:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/oplus/epona/ResponseCode;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oplus/epona/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/oplus/epona/ResponseCode;->SUCCESS:Lcom/oplus/epona/ResponseCode;

    new-instance v1, Lcom/oplus/epona/ResponseCode;

    const-string v4, "FAILED"

    const/4 v5, -0x1

    invoke-direct {v1, v4, v3, v5}, Lcom/oplus/epona/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/oplus/epona/ResponseCode;->FAILED:Lcom/oplus/epona/ResponseCode;

    new-instance v4, Lcom/oplus/epona/ResponseCode;

    const-string v5, "PERMISSION_DENY"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-direct {v4, v5, v6, v7}, Lcom/oplus/epona/ResponseCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/oplus/epona/ResponseCode;->PERMISSION_DENY:Lcom/oplus/epona/ResponseCode;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/oplus/epona/ResponseCode;

    aput-object v0, v5, v2

    aput-object v1, v5, v3

    aput-object v4, v5, v6

    sput-object v5, Lcom/oplus/epona/ResponseCode;->$VALUES:[Lcom/oplus/epona/ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/oplus/epona/ResponseCode;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/epona/ResponseCode;
    .registers 2

    const-class v0, Lcom/oplus/epona/ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/epona/ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/oplus/epona/ResponseCode;
    .registers 1

    sget-object v0, Lcom/oplus/epona/ResponseCode;->$VALUES:[Lcom/oplus/epona/ResponseCode;

    invoke-virtual {v0}, [Lcom/oplus/epona/ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/epona/ResponseCode;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/epona/ResponseCode;->code:I

    return p0
.end method
