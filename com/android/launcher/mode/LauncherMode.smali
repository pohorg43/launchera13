.class public final enum Lcom/android/launcher/mode/LauncherMode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/launcher/mode/LauncherMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher/mode/LauncherMode;

.field public static final enum Drawer:Lcom/android/launcher/mode/LauncherMode;

.field public static final enum Simple:Lcom/android/launcher/mode/LauncherMode;

.field public static final enum Standard:Lcom/android/launcher/mode/LauncherMode;


# instance fields
.field private final mValue:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    new-instance v0, Lcom/android/launcher/mode/LauncherMode;

    const-string v1, "Standard"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/launcher/mode/LauncherMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    new-instance v1, Lcom/android/launcher/mode/LauncherMode;

    const-string v3, "Drawer"

    const/4 v4, 0x1

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/android/launcher/mode/LauncherMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    new-instance v3, Lcom/android/launcher/mode/LauncherMode;

    const-string v6, "Simple"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v5, v7}, Lcom/android/launcher/mode/LauncherMode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    new-array v6, v7, [Lcom/android/launcher/mode/LauncherMode;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    aput-object v3, v6, v5

    sput-object v6, Lcom/android/launcher/mode/LauncherMode;->$VALUES:[Lcom/android/launcher/mode/LauncherMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher/mode/LauncherMode;->mValue:I

    return-void
.end method

.method public static create(I)Lcom/android/launcher/mode/LauncherMode;
    .registers 3

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_9

    return-object v0

    :cond_9
    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherMode;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_12

    return-object v0

    :cond_12
    sget-object p0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher/mode/LauncherMode;
    .registers 2

    const-class v0, Lcom/android/launcher/mode/LauncherMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/mode/LauncherMode;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher/mode/LauncherMode;
    .registers 1

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->$VALUES:[Lcom/android/launcher/mode/LauncherMode;

    invoke-virtual {v0}, [Lcom/android/launcher/mode/LauncherMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher/mode/LauncherMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/mode/LauncherMode;->mValue:I

    return p0
.end method
