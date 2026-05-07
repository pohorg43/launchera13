.class public final enum Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SingleOptionsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

.field public static final enum FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

.field public static final enum ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    const-string v1, "FLOATING_WINDOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->FLOATING_WINDOW:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    new-instance v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    const-string v1, "ONE_PUTT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->ONE_PUTT:Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    invoke-static {}, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->$values()[Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->$VALUES:[Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;->$VALUES:[Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/rapidreaction/utils/OnePuttUtils$SingleOptionsType;

    return-object v0
.end method
