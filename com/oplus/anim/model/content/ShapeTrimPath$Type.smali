.class public final enum Lcom/oplus/anim/model/content/ShapeTrimPath$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/anim/model/content/ShapeTrimPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/anim/model/content/ShapeTrimPath$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

.field public static final enum INDIVIDUALLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

.field public static final enum SIMULTANEOUSLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    const-string v1, "SIMULTANEOUSLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    new-instance v1, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    const-string v3, "INDIVIDUALLY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->$VALUES:[Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

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

.method public static forId(I)Lcom/oplus/anim/model/content/ShapeTrimPath$Type;
    .registers 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    sget-object p0, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown trim path type "

    invoke-static {v1, p0}, Landroid/support/v4/media/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    sget-object p0, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/anim/model/content/ShapeTrimPath$Type;
    .registers 2

    const-class v0, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    return-object p0
.end method

.method public static values()[Lcom/oplus/anim/model/content/ShapeTrimPath$Type;
    .registers 1

    sget-object v0, Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->$VALUES:[Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    invoke-virtual {v0}, [Lcom/oplus/anim/model/content/ShapeTrimPath$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/anim/model/content/ShapeTrimPath$Type;

    return-object v0
.end method
