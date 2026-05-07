.class public final enum Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/IAreaWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WIDGET_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

.field public static final enum BIG_FOLDER:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

.field public static final enum CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

.field public static final enum UNDEFINED:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

.field public static final enum WIDGET:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->UNDEFINED:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    new-instance v1, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    const-string v3, "WIDGET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->WIDGET:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    new-instance v3, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    const-string v5, "CARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->CARD:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    new-instance v5, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    const-string v7, "BIG_FOLDER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->BIG_FOLDER:Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->$VALUES:[Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    .registers 2

    const-class v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->$VALUES:[Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    invoke-virtual {v0}, [Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/card/IAreaWidget$WIDGET_TYPE;

    return-object v0
.end method
