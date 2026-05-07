.class public final enum Lcom/android/launcher3/OplusWorkspace$PageState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/OplusWorkspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/OplusWorkspace$PageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/OplusWorkspace$PageState;

.field public static final enum ANIMATING:Lcom/android/launcher3/OplusWorkspace$PageState;

.field public static final enum INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

.field public static final enum VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/launcher3/OplusWorkspace$PageState;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/OplusWorkspace$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->INVISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    new-instance v1, Lcom/android/launcher3/OplusWorkspace$PageState;

    const-string v3, "VISIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/OplusWorkspace$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher3/OplusWorkspace$PageState;->VISIBLE:Lcom/android/launcher3/OplusWorkspace$PageState;

    new-instance v3, Lcom/android/launcher3/OplusWorkspace$PageState;

    const-string v5, "ANIMATING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/launcher3/OplusWorkspace$PageState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher3/OplusWorkspace$PageState;->ANIMATING:Lcom/android/launcher3/OplusWorkspace$PageState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/launcher3/OplusWorkspace$PageState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/launcher3/OplusWorkspace$PageState;->$VALUES:[Lcom/android/launcher3/OplusWorkspace$PageState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/OplusWorkspace$PageState;
    .registers 2

    const-class v0, Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/OplusWorkspace$PageState;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/OplusWorkspace$PageState;
    .registers 1

    sget-object v0, Lcom/android/launcher3/OplusWorkspace$PageState;->$VALUES:[Lcom/android/launcher3/OplusWorkspace$PageState;

    invoke-virtual {v0}, [Lcom/android/launcher3/OplusWorkspace$PageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/OplusWorkspace$PageState;

    return-object v0
.end method
