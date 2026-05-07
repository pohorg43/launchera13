.class public final enum Lcom/coui/responsiveui/config/UIConfig$WindowType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/responsiveui/config/UIConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WindowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/responsiveui/config/UIConfig$WindowType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LARGE:Lcom/coui/responsiveui/config/UIConfig$WindowType;

.field public static final enum MEDIUM:Lcom/coui/responsiveui/config/UIConfig$WindowType;

.field public static final enum SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;

.field public static final synthetic a:[Lcom/coui/responsiveui/config/UIConfig$WindowType;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coui/responsiveui/config/UIConfig$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->SMALL:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    new-instance v1, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/coui/responsiveui/config/UIConfig$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/coui/responsiveui/config/UIConfig$WindowType;->MEDIUM:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    new-instance v3, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    const-string v5, "LARGE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/coui/responsiveui/config/UIConfig$WindowType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/coui/responsiveui/config/UIConfig$WindowType;->LARGE:Lcom/coui/responsiveui/config/UIConfig$WindowType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/coui/responsiveui/config/UIConfig$WindowType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/coui/responsiveui/config/UIConfig$WindowType;->a:[Lcom/coui/responsiveui/config/UIConfig$WindowType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/coui/responsiveui/config/UIConfig$WindowType;
    .registers 2

    const-class v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/responsiveui/config/UIConfig$WindowType;

    return-object p0
.end method

.method public static values()[Lcom/coui/responsiveui/config/UIConfig$WindowType;
    .registers 1

    sget-object v0, Lcom/coui/responsiveui/config/UIConfig$WindowType;->a:[Lcom/coui/responsiveui/config/UIConfig$WindowType;

    invoke-virtual {v0}, [Lcom/coui/responsiveui/config/UIConfig$WindowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/responsiveui/config/UIConfig$WindowType;

    return-object v0
.end method
