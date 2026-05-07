.class public Lcom/android/launcher/folder/recommend/bean/JsonHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toJsonArray(Ljava/lang/Object;)Lorg/json/JSONArray;
    .registers 2

    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/json/JSONArray;

    goto :goto_1b

    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    :try_start_13
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_18} :catch_1a

    move-object p0, v0

    goto :goto_1b

    :catch_1a
    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    if-nez p0, :cond_22

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_22
    return-object p0
.end method

.method public static toJsonObject(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 2

    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    check-cast p0, Lorg/json/JSONObject;

    goto :goto_1b

    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1a

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    :try_start_13
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_18} :catch_1a

    move-object p0, v0

    goto :goto_1b

    :catch_1a
    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    if-nez p0, :cond_22

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    :cond_22
    return-object p0
.end method
