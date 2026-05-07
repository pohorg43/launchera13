.class public final enum Lcom/android/launcher/FancyIconKey$AppLocationType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/FancyIconKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppLocationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher/FancyIconKey$AppLocationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher/FancyIconKey$AppLocationType;

.field public static final enum DRAWER:Lcom/android/launcher/FancyIconKey$AppLocationType;

.field public static final enum DRAWER_PREDICTION:Lcom/android/launcher/FancyIconKey$AppLocationType;

.field public static final enum DRAWER_SEARCH:Lcom/android/launcher/FancyIconKey$AppLocationType;

.field public static final enum WORKSPACE:Lcom/android/launcher/FancyIconKey$AppLocationType;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/android/launcher/FancyIconKey$AppLocationType;

    const-string v1, "WORKSPACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/launcher/FancyIconKey$AppLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher/FancyIconKey$AppLocationType;->WORKSPACE:Lcom/android/launcher/FancyIconKey$AppLocationType;

    new-instance v1, Lcom/android/launcher/FancyIconKey$AppLocationType;

    const-string v3, "DRAWER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/launcher/FancyIconKey$AppLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER:Lcom/android/launcher/FancyIconKey$AppLocationType;

    new-instance v3, Lcom/android/launcher/FancyIconKey$AppLocationType;

    const-string v5, "DRAWER_PREDICTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/launcher/FancyIconKey$AppLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER_PREDICTION:Lcom/android/launcher/FancyIconKey$AppLocationType;

    new-instance v5, Lcom/android/launcher/FancyIconKey$AppLocationType;

    const-string v7, "DRAWER_SEARCH"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/launcher/FancyIconKey$AppLocationType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/launcher/FancyIconKey$AppLocationType;->DRAWER_SEARCH:Lcom/android/launcher/FancyIconKey$AppLocationType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/android/launcher/FancyIconKey$AppLocationType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/android/launcher/FancyIconKey$AppLocationType;->$VALUES:[Lcom/android/launcher/FancyIconKey$AppLocationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher/FancyIconKey$AppLocationType;
    .registers 2

    const-class v0, Lcom/android/launcher/FancyIconKey$AppLocationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/FancyIconKey$AppLocationType;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher/FancyIconKey$AppLocationType;
    .registers 1

    sget-object v0, Lcom/android/launcher/FancyIconKey$AppLocationType;->$VALUES:[Lcom/android/launcher/FancyIconKey$AppLocationType;

    invoke-virtual {v0}, [Lcom/android/launcher/FancyIconKey$AppLocationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher/FancyIconKey$AppLocationType;

    return-object v0
.end method
