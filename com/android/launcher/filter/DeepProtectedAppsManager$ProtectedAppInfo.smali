.class public Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/filter/DeepProtectedAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtectedAppInfo"
.end annotation


# static fields
.field private static final END_CHAR:Ljava/lang/String; = ")"

.field private static final MEMBER_COUNT:I = 0x3

.field private static final MEMBER_SPLIT_CHAR:Ljava/lang/String; = ","

.field private static final START_CHAR:Ljava/lang/String; = "("


# instance fields
.field public mMultiProtectType:I

.field public mPkgName:Ljava/lang/String;

.field public mProtectType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    iput p2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    iput p3, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    return-void
.end method

.method public static equals(Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    iget v1, p1, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    if-ne v0, v1, :cond_18

    iget p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    iget p1, p1, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    if-ne p0, p1, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;
    .registers 5

    const-string v0, "("

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2f

    new-instance v0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;-><init>(Ljava/lang/String;II)V

    return-object v0

    :cond_2f
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public format()Ljava/lang/String;
    .registers 4

    const-string v0, "("

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ProtectInfo{ PackageName: "

    invoke-static {v0}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ProtectType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mProtectType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", MultiProtectType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher/filter/DeepProtectedAppsManager$ProtectedAppInfo;->mMultiProtectType:I

    const-string v1, " }"

    invoke-static {v0, p0, v1}, Landroid/support/v4/media/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
