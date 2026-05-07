.class public final Lcom/android/common/util/IntentUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/IntentUtils$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/IntentUtils$Companion;

.field private static final TAG:Ljava/lang/String; = "IntentUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/IntentUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/IntentUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/IntentUtils$Companion;->getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final getBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/IntentUtils$Companion;->getBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final getByteArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[B
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/IntentUtils$Companion;->getByteArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static final getIntArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/IntentUtils$Companion;->getIntArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public static final getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/IntentUtils$Companion;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/common/util/IntentUtils$Companion;->getLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/IntentUtils$Companion;->getParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/IntentUtils$Companion;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public static final getStringArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/IntentUtils$Companion;->getStringArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/IntentUtils$Companion;->getStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/IntentUtils$Companion;->getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
