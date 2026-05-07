.class public final Lcom/android/launcher3/appedit/AppEditInfo$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/appedit/AppEditInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/appedit/AppEditInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCONTENT_URI()Landroid/net/Uri;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditInfo;->access$getCONTENT_URI$cp()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final getPROJECTION()[Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/appedit/AppEditInfo;->access$getPROJECTION$cp()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setCONTENT_URI(Landroid/net/Uri;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/appedit/AppEditInfo;->access$setCONTENT_URI$cp(Landroid/net/Uri;)V

    return-void
.end method
