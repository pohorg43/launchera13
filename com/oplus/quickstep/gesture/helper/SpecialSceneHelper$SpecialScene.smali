.class public final enum Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialScene"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

.field public static final enum CHILD_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

.field public static final enum DEFAULT_FLAG:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

.field public static final enum FOCUS_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

.field public static final enum STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

.field public static final enum SUPER_POWERSAVE_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

.field public static final enum WELL_BEING_ASSISTANT_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;


# instance fields
.field private final modeName:Ljava/lang/String;

.field private final needIgnorRecents:Z

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->DEFAULT_FLAG:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->CHILD_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->SUPER_POWERSAVE_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->FOCUS_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->WELL_BEING_ASSISTANT_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 13

    new-instance v6, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const-string v1, "DEFAULT_FLAG"

    const/4 v2, 0x0

    const-string v3, "DEFAULT_FLAG"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v6, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->DEFAULT_FLAG:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const-string v8, "CHILD_MODE"

    const/4 v9, 0x1

    const-string v10, "CHILD_MODE"

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->CHILD_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const-string v2, "SUPER_POWERSAVE_MODE"

    const/4 v3, 0x2

    const-string v4, "SUPER_POWERSAVE_MODE"

    const/4 v5, 0x4

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->SUPER_POWERSAVE_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const-string v8, "FOCUS_MODE"

    const/4 v9, 0x3

    const-string v10, "FOCUS_MODE"

    const/16 v11, 0x8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->FOCUS_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const-string v2, "STUDY_MODE"

    const/4 v3, 0x4

    const-string v4, "STUDY_MODE"

    const/16 v5, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    new-instance v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    const-string v8, "WELL_BEING_ASSISTANT_MODE"

    const/4 v9, 0x5

    const-string v10, "WELL_BEING_ASSISTANT_MODE"

    const/16 v11, 0x20

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;-><init>(Ljava/lang/String;ILjava/lang/String;IZ)V

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->WELL_BEING_ASSISTANT_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-static {}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->$values()[Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->$VALUES:[Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->modeName:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->value:I

    iput-boolean p5, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->needIgnorRecents:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;
    .registers 2

    const-class v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    return-object p0
.end method

.method public static values()[Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->$VALUES:[Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    return-object v0
.end method


# virtual methods
.method public final getModeName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->modeName:Ljava/lang/String;

    return-object p0
.end method

.method public final getNeedIgnorRecents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->needIgnorRecents:Z

    return p0
.end method

.method public final getValue()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->value:I

    return p0
.end method

.method public final needIgnoreToRecents()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->needIgnorRecents:Z

    return p0
.end method
