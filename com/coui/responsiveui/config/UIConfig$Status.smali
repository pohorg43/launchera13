.class public final enum Lcom/coui/responsiveui/config/UIConfig$Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/responsiveui/config/UIConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/responsiveui/config/UIConfig$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

.field public static final enum UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

.field public static final enum UNFOLDING:Lcom/coui/responsiveui/config/UIConfig$Status;

.field public static final enum UNKNOWN:Lcom/coui/responsiveui/config/UIConfig$Status;

.field public static final synthetic b:[Lcom/coui/responsiveui/config/UIConfig$Status;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$Status;

    const-string v1, "FOLD"

    const/4 v2, 0x0

    const-string v3, "fd"

    invoke-direct {v0, v1, v2, v3}, Lcom/coui/responsiveui/config/UIConfig$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->FOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    new-instance v1, Lcom/coui/responsiveui/config/UIConfig$Status;

    const-string v3, "UNFOLDING"

    const/4 v4, 0x1

    const-string v5, "fding"

    invoke-direct {v1, v3, v4, v5}, Lcom/coui/responsiveui/config/UIConfig$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLDING:Lcom/coui/responsiveui/config/UIConfig$Status;

    new-instance v3, Lcom/coui/responsiveui/config/UIConfig$Status;

    const-string v5, "UNFOLD"

    const/4 v6, 0x2

    const-string/jumbo v7, "ufd"

    invoke-direct {v3, v5, v6, v7}, Lcom/coui/responsiveui/config/UIConfig$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/coui/responsiveui/config/UIConfig$Status;->UNFOLD:Lcom/coui/responsiveui/config/UIConfig$Status;

    new-instance v5, Lcom/coui/responsiveui/config/UIConfig$Status;

    const-string v7, "UNKNOWN"

    const/4 v8, 0x3

    const-string/jumbo v9, "unknown"

    invoke-direct {v5, v7, v8, v9}, Lcom/coui/responsiveui/config/UIConfig$Status;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/coui/responsiveui/config/UIConfig$Status;->UNKNOWN:Lcom/coui/responsiveui/config/UIConfig$Status;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/coui/responsiveui/config/UIConfig$Status;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/coui/responsiveui/config/UIConfig$Status;->b:[Lcom/coui/responsiveui/config/UIConfig$Status;

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

    const-string p1, ""

    iput-object p1, p0, Lcom/coui/responsiveui/config/UIConfig$Status;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/coui/responsiveui/config/UIConfig$Status;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coui/responsiveui/config/UIConfig$Status;
    .registers 2

    const-class v0, Lcom/coui/responsiveui/config/UIConfig$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIConfig$Status;

    return-object p0
.end method

.method public static values()[Lcom/coui/responsiveui/config/UIConfig$Status;
    .registers 1

    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$Status;->b:[Lcom/coui/responsiveui/config/UIConfig$Status;

    invoke-virtual {v0}, [Lcom/coui/responsiveui/config/UIConfig$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/responsiveui/config/UIConfig$Status;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/coui/responsiveui/config/UIConfig$Status;->a:Ljava/lang/String;

    return-object p0
.end method
