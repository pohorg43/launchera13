.class public final enum Lcom/oplus/anim/model/content/GradientType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/anim/model/content/GradientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/anim/model/content/GradientType;

.field public static final enum LINEAR:Lcom/oplus/anim/model/content/GradientType;

.field public static final enum RADIAL:Lcom/oplus/anim/model/content/GradientType;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/anim/model/content/GradientType;

    const-string v1, "LINEAR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/model/content/GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/content/GradientType;->LINEAR:Lcom/oplus/anim/model/content/GradientType;

    new-instance v1, Lcom/oplus/anim/model/content/GradientType;

    const-string v3, "RADIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/anim/model/content/GradientType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/anim/model/content/GradientType;->RADIAL:Lcom/oplus/anim/model/content/GradientType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/anim/model/content/GradientType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/anim/model/content/GradientType;->$VALUES:[Lcom/oplus/anim/model/content/GradientType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/anim/model/content/GradientType;
    .registers 2

    const-class v0, Lcom/oplus/anim/model/content/GradientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/model/content/GradientType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/anim/model/content/GradientType;
    .registers 1

    sget-object v0, Lcom/oplus/anim/model/content/GradientType;->$VALUES:[Lcom/oplus/anim/model/content/GradientType;

    invoke-virtual {v0}, [Lcom/oplus/anim/model/content/GradientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/anim/model/content/GradientType;

    return-object v0
.end method
