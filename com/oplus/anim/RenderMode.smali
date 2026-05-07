.class public final enum Lcom/oplus/anim/RenderMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/anim/RenderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/anim/RenderMode;

.field public static final enum AUTOMATIC:Lcom/oplus/anim/RenderMode;

.field public static final enum HARDWARE:Lcom/oplus/anim/RenderMode;

.field public static final enum NONE:Lcom/oplus/anim/RenderMode;

.field public static final enum SOFTWARE:Lcom/oplus/anim/RenderMode;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/oplus/anim/RenderMode;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/anim/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/anim/RenderMode;->AUTOMATIC:Lcom/oplus/anim/RenderMode;

    new-instance v1, Lcom/oplus/anim/RenderMode;

    const-string v3, "HARDWARE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/oplus/anim/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/oplus/anim/RenderMode;->HARDWARE:Lcom/oplus/anim/RenderMode;

    new-instance v3, Lcom/oplus/anim/RenderMode;

    const-string v5, "SOFTWARE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/oplus/anim/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/oplus/anim/RenderMode;->SOFTWARE:Lcom/oplus/anim/RenderMode;

    new-instance v5, Lcom/oplus/anim/RenderMode;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/oplus/anim/RenderMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/oplus/anim/RenderMode;->NONE:Lcom/oplus/anim/RenderMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/oplus/anim/RenderMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/oplus/anim/RenderMode;->$VALUES:[Lcom/oplus/anim/RenderMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/anim/RenderMode;
    .registers 2

    const-class v0, Lcom/oplus/anim/RenderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/RenderMode;

    return-object p0
.end method

.method public static values()[Lcom/oplus/anim/RenderMode;
    .registers 1

    sget-object v0, Lcom/oplus/anim/RenderMode;->$VALUES:[Lcom/oplus/anim/RenderMode;

    invoke-virtual {v0}, [Lcom/oplus/anim/RenderMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/anim/RenderMode;

    return-object v0
.end method
