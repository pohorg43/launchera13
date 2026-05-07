.class public final enum Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/elements/ScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AlignV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

.field public static final enum BOTTOM:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

.field public static final enum CENTER:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

.field public static final enum TOP:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->TOP:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    new-instance v1, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    const-string v3, "CENTER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->CENTER:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    new-instance v3, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->BOTTOM:Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->$VALUES:[Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;
    .registers 2

    const-class v0, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    return-object p0
.end method

.method public static values()[Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;
    .registers 1

    sget-object v0, Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->$VALUES:[Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    invoke-virtual {v0}, [Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/fancyicon/elements/ScreenElement$AlignV;

    return-object v0
.end method
