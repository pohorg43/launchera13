.class public Lcom/android/launcher/model/UninstallItemInfoWithIcon;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/model/UninstallItemInfoWithIcon$Companion;
    }
.end annotation


# static fields
.field public static final APPLICATION:I = 0x0

.field public static final Companion:Lcom/android/launcher/model/UninstallItemInfoWithIcon$Companion;

.field public static final SHORTCUT:I = 0x1


# instance fields
.field private itemInfoWithIcon:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

.field private retainInfo:Ljava/lang/String;

.field private selectFlag:Z

.field private viewType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/model/UninstallItemInfoWithIcon$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/model/UninstallItemInfoWithIcon$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->Companion:Lcom/android/launcher/model/UninstallItemInfoWithIcon$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/lang/String;ZI)V
    .registers 6

    const-string v0, "itemInfoWithIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->itemInfoWithIcon:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iput-object p2, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->retainInfo:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->selectFlag:Z

    iput p4, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/lang/String;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    const/4 p3, 0x1

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;ZI)V
    .registers 5

    const-string v0, "itemInfoWithIcon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/launcher/model/UninstallItemInfoWithIcon;-><init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Ljava/lang/String;ZI)V

    return-void
.end method


# virtual methods
.method public final getItemInfoWithIcon()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->itemInfoWithIcon:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-object p0
.end method

.method public final getRetainInfo()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->retainInfo:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectFlag()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->selectFlag:Z

    return p0
.end method

.method public final getViewType()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->viewType:I

    return p0
.end method

.method public final setItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->itemInfoWithIcon:Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    return-void
.end method

.method public final setRetainInfo(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->retainInfo:Ljava/lang/String;

    return-void
.end method

.method public final setSelectFlag(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->selectFlag:Z

    return-void
.end method

.method public final setViewType(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/model/UninstallItemInfoWithIcon;->viewType:I

    return-void
.end method
