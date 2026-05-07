.class public Lcom/android/launcher/filter/GameListHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/filter/GameListHelper$AppInfo;
    }
.end annotation


# static fields
.field private static final ACTION_GET_APP_INFO:Ljava/lang/String; = "fetch_app_info_list"

.field private static final APP_ERROR_MARK_TYPE:I = 0x7

.field private static final APP_TYPE:I = 0x8

.field private static final COSA_COMPONENT_NAME:Ljava/lang/String; = "com.oplus.cosa.exported"

.field private static final KEY_APP_LIST:Ljava/lang/String; = "key_app_list"

.field private static final TAG:Ljava/lang/String; = "GameListHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameList()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.oplus.cosa.exported"

    const-string v2, "fetch_app_info_list"

    invoke-static {v1, v2}, Lcom/android/launcher/filter/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Response;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-virtual {v1}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-virtual {v1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_89

    invoke-virtual {v1}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_app_list"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_89

    const-string v2, "GameListHelper"

    const-string v3, "gameListJson!=null"

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_34
    new-instance v3, Lcom/android/launcher/filter/GameListHelper$1;

    invoke-direct {v3}, Lcom/android/launcher/filter/GameListHelper$1;-><init>()V

    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_89

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4e
    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/filter/GameListHelper$AppInfo;

    iget v4, v3, Lcom/android/launcher/filter/GameListHelper$AppInfo;->mUserMarkType:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_66

    iget-object v3, v3, Lcom/android/launcher/filter/GameListHelper$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_66
    iget v6, v3, Lcom/android/launcher/filter/GameListHelper$AppInfo;->mType:I

    if-ne v6, v5, :cond_4e

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4e

    iget-object v3, v3, Lcom/android/launcher/filter/GameListHelper$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_72} :catch_74

    goto :goto_4e

    :cond_73
    return-object v0

    :catch_74
    move-exception v1

    const-string v3, "error convert json: "

    invoke-static {v3}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_89
    return-object v0
.end method
